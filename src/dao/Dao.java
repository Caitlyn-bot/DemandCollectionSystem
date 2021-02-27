package dao;

import domain.*;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import util.JDBCUtils;
import util.MD5;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

public class Dao {
    JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    MD5 md5=new MD5();
    //登录
    public User queryUserByUsernameAndPwd(String username,String password){
        try {
            String sql="select * from user where username=? and pwd=?";
            String pwd=md5.EncoderByMd5(password);
            User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), username, pwd);
            return user;
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }
    //注册，添加用户
    public boolean addUser(User user){
        boolean flag=false;
        try {
            String sql="insert into user(username,pwd,JGMC,realname,SFZH,YZBM,YDDH,role,status) values(?,?,?,?,?,?,?,?,?)";
            String pwd=md5.EncoderByMd5(user.getpwd());
            int update = template.update(sql, user.getUsername(), pwd
                    , user.getJGMC(), user.getRealname(), user.getSFZH()
                    , user.getYZBM(), user.getYDDH(),user.getRole(),user.getStatus());
            if (update>=1){
                flag=true;
            }

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //修改用户角色
    public boolean updateUserByUserid(int userid,int role){
        boolean flag=false;
        try {
            String sql="update user set role=? where userid=?";
            int update = template.update(sql, role, userid);
            if (update>=1){
                flag=true;
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //修改用户密码
    public boolean updateUserPwdByid(int userid,String password){
        boolean flag=false;
        try {
            String sql="update user set pwd=? where userid=?";
            String pwd=md5.EncoderByMd5(password);
            int update = template.update(sql,pwd,userid);
            if (update>=1){
                flag=true;
            }

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //暂停用户
    public boolean stopUserByUserid(int userid){
        boolean flag=false;
        try {
            String sql="update user set status=? where userid=?";
            int update = template.update(sql,0, userid);
            if (update>=1){
                flag=true;
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //恢复用户
    public boolean resumeUserByUserid(int userid){
        boolean flag=false;
        try {
            String sql="update user set status=? where userid=?";
            int update = template.update(sql,1, userid);
            if (update>=1){
                flag=true;
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //删除用户
    public boolean deleteUserByUserid(int userid){
        boolean flag=false;
        try {
            String sql="delete from user where userid=?";
            int count = template.update(sql, userid);
            if (count>=1){
                flag=true;
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //查询所有用户
    public List<User> queryAllUsers(){
        String sql="select * from user";
        List<User> users = template.query(sql, new BeanPropertyRowMapper<User>(User.class));
        return users;
    }
    //查询用户根据分页
    public PageBean<User> queryUserByPage(String _currentPage,String _rows){
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);

        if(currentPage <=0) {
            currentPage = 1;
        }

        //创建空的PageBean对象
        PageBean<User> pb = new PageBean<User>();

        Dao dao=new Dao();
        int totalCount =dao.queryUserCount();
        int totalPage = (totalCount % rows)  == 0 ? totalCount/rows : (totalCount/rows) + 1;
        if (currentPage>=totalPage){
            currentPage=totalPage;
        }
        int start = (currentPage - 1) * rows;
        String sql="select * from user limit ?,?";
        List<User> list = template.query(sql, new BeanPropertyRowMapper<>(User.class), start, rows);
        //设置参数
        pb.setCurrentPage(currentPage);
        pb.setRows(rows);
        pb.setTotalCount(totalCount);
        pb.setTotalPage(totalPage);
        pb.setList(list);

        return pb;
    }
    //查询总用户数
    public int queryUserCount(){
        String sql="select count(*) from user";
        return template.queryForObject(sql, Integer.class);
    }

    //添加角色
    public boolean addRole(Role role) {
        boolean flag = false;
        String sql = "insert into role(rolename,selfmsg,updatepwd,addDemand,demandMange,xssh,bmsh,report,rolemange) values(?,?,?,?,?,?,?,?,?)";

        int update = template.update(sql, role.getRolename(), role.getSelfmsg(), role.getUpdatepwd()
                , role.getAddDemand(), role.getDemandMange(), role.getXssh(), role.getBmsh(), role.getReport(),role.getRolemange());
        if (update >= 1) {
            flag = true;
        }

        return flag;
    }
    //删除角色
    public boolean deleteRoleByRoleid(int roleid){
        boolean flag=false;
        try {
            String sql="delete from role where roleid=?";
            int count = template.update(sql, roleid);
            if (count>=1){
                flag=true;
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //修改角色名称
    public boolean updateRolenameByRoleid(int roleid,String rolename){
        boolean flag=false;
        try {
            String sql="update role set rolename=? where roleid=?";
            int count = template.update(sql, rolename, roleid);
            if (count>=1){
                flag=true;
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //修改角色权限
    public boolean updateRoleByRoleid(Role role){
        boolean flag=false;
        try {
            String sql="update role set selfmsg=?,updatepwd=?,addDemand=?" +
                    ",demandMange=?,xssh=?,bmsh=?,report=?,rolemange=? where roleid=?";
            int count = template.update(sql,role.getSelfmsg(),role.getUpdatepwd(),role.getAddDemand()
            ,role.getDemandMange(),role.getXssh(),role.getBmsh(),role.getReport(),role.getRolemange(),role.getRoleid());
            if (count>=1){
                flag=true;
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据id查询角色
    public Role queryRoleById(int roleid){
        String sql="select * from role where roleid=?";

        Role role = null;
        try {
            role = template.queryForObject(sql, new BeanPropertyRowMapper<Role>(Role.class),roleid);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }

        return role;
    }

    //查询全部角色
    public List<Role> queryAllRole(){
        String sql="select * from role";
        List<Role> roles = null;
        try {
            roles = template.query(sql, new BeanPropertyRowMapper<Role>(Role.class));
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return roles;
    }

    //查询学科分类
    public List<Xkfl> queryAllXkfl(){
        String sql="select * from xkfl where typeid=?";
        List<Xkfl> xkfls=null;
        try {
             xkfls = template.query(sql, new BeanPropertyRowMapper<Xkfl>(Xkfl.class), 0);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return xkfls;
    }
    //根据父学科查询子学科
    public List<Xkfl> queryXkflByFather(int fatherid){
        String sql="select * from xkfl where fatherid=?";
        List<Xkfl> xkfls=null;
        try {
            xkfls = template.query(sql, new BeanPropertyRowMapper<Xkfl>(Xkfl.class), fatherid);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return xkfls;
    }
    //查询国民经济分类
    public List<Gmjjfl> queryAllGmjjfl(){
        String sql="select * from gmjjfl where typeid=?";
        List<Gmjjfl> gmjjfls=null;
        try {
            gmjjfls = template.query(sql, new BeanPropertyRowMapper<Gmjjfl>(Gmjjfl.class), 0);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return gmjjfls;
    }
    //根据父国民经济分类查询子国民经济分类
    public List<Gmjjfl> queryGmjjflByFather(int lastid){
        String sql="select * from gmjjfl where lastid=?";
        List<Gmjjfl> gmjjfls=null;
        try {
            gmjjfls = template.query(sql, new BeanPropertyRowMapper<Gmjjfl>(Gmjjfl.class), lastid);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return gmjjfls;
    }
    //添加需求
    public boolean addDemand(Dcwjxx dcwjxx){
        boolean flag = false;
        String sql = "insert into dcwjxx values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        int update = template.update(sql,dcwjxx.getWJID(),dcwjxx.getSFSH(),dcwjxx.getXSSCYJ(),dcwjxx.getBMSFSH()
        ,dcwjxx.getBMSHTYJ(),dcwjxx.getGLCS(),dcwjxx.getJGMC(),dcwjxx.getGKGLBM(),dcwjxx.getTXDZ(),dcwjxx.getSZDY()
        ,dcwjxx.getDWWZ(),dcwjxx.getDZYX(),dcwjxx.getFRDB(),dcwjxx.getYZBM(),dcwjxx.getLXR(),dcwjxx.getGDDH()
        ,dcwjxx.getYDDH(),dcwjxx.getCZ(),dcwjxx.getJGSX(),dcwjxx.getJGJJ(),dcwjxx.getJSXQMC(),dcwjxx.getQSXQNF()
        ,dcwjxx.getJZXQNF(),dcwjxx.getZDKJXQGS(),dcwjxx.getGJZ(),dcwjxx.getNTRZJE(),dcwjxx.getJSXQHZMS(),dcwjxx.getQTJSMS()
        ,dcwjxx.getYJLX(),dcwjxx.getXKFL(),dcwjxx.getXQJSSSLY(),dcwjxx.getXQJSYYHY());
        if (update >= 1) {
            flag = true;
        }

        return flag;
    }
    //修改需求
    public boolean updateDemand(Dcwjxx dcwjxx){
        boolean flag = false;
        String sql = "update dcwjxx set SFSH=?,XSSCYJ=?,BMSFSH=?,BMSHTYJ=?  where WJID=?";

        int update = template.update(sql,dcwjxx.getSFSH(),dcwjxx.getXSSCYJ(),dcwjxx.getBMSFSH()
                ,dcwjxx.getBMSHTYJ(),dcwjxx.getGLCS(),dcwjxx.getJGMC(),dcwjxx.getGKGLBM(),dcwjxx.getTXDZ(),dcwjxx.getSZDY()
                ,dcwjxx.getDWWZ(),dcwjxx.getDZYX(),dcwjxx.getFRDB(),dcwjxx.getYZBM(),dcwjxx.getLXR(),dcwjxx.getGDDH()
                ,dcwjxx.getYDDH(),dcwjxx.getCZ(),dcwjxx.getJGSX(),dcwjxx.getJGJJ(),dcwjxx.getJSXQMC(),dcwjxx.getQSXQNF()
                ,dcwjxx.getJZXQNF(),dcwjxx.getZDKJXQGS(),dcwjxx.getGJZ(),dcwjxx.getNTRZJE(),dcwjxx.getJSXQHZMS(),dcwjxx.getQTJSMS()
                ,dcwjxx.getYJLX(),dcwjxx.getXKFL(),dcwjxx.getXQJSSSLY(),dcwjxx.getXQJSYYHY(),dcwjxx.getWJID());
        if (update >= 1) {
            flag = true;
        }

        return flag;
    }
    //需求管理
    public List<Dcwjxx> queryAllDcwjxx(){
        String sql="select * from dcwjxx";
        List<Dcwjxx> dcwjxxs=null;
        try {
            dcwjxxs= template.query(sql, new BeanPropertyRowMapper<Dcwjxx>(Dcwjxx.class));
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return dcwjxxs;
    }
    //根据问卷ID查询问卷
    public Dcwjxx queryDcwjById(int wjid){
        String sql="select * from dcwjxx where WJID=?";

        Dcwjxx dcwjxx = null;
        try {
            dcwjxx = template.queryForObject(sql, new BeanPropertyRowMapper<Dcwjxx>(Dcwjxx.class),wjid);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }

        return dcwjxx;
    }
    //根据问卷ID删除问卷
    public boolean deleteWjByWJID(int wjid){
        boolean flag=false;
        try {
            String sql="delete from dcwjxx where WJID=?";
            int count = template.update(sql, wjid);
            if (count>=1){
                flag=true;
            }
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //管理处室
    public List<GLCS> queryAllGLCS(){
        List<GLCS> glcss=null;
        String sql="select * from glcs";
        try {
            glcss = template.query(sql, new BeanPropertyRowMapper<GLCS>(GLCS.class));
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return glcss;
    }
    //管理处室ajax
    public List<GLCS> queryGLCS(String key){
        List<GLCS> glcss=null;
        String sql="select * from glcs where (id like concat('%',?,'%') )or( bmmc like concat('%',?,'%') )  ";
        try {
            glcss = template.query(sql, new BeanPropertyRowMapper<GLCS>(GLCS.class),key,key);
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return glcss;
    }
    //查询
    public List<Dcwjxx> search(List<String> list,String sql){
        List<Dcwjxx> dcwjxxes = template.query(sql, new BeanPropertyRowMapper<>(Dcwjxx.class), list.toArray());
        return dcwjxxes;
    }
    //查询
    public List<Dcwjxx> search(String sql){
        List<Dcwjxx> dcwjxxes = template.query(sql, new BeanPropertyRowMapper<>(Dcwjxx.class));
        return dcwjxxes;
    }
    //管理处室模糊查询
    public List<GLCS> searchGlcs(int id){
        String sql="select * from glcs where id like concat('%',?,'%')";
        List<GLCS> glcss = template.query(sql, new BeanPropertyRowMapper<>(GLCS.class),id);
        return glcss;
    }
    //管理处室编号
    public GLCS searchGlcsmc(String bmmc){
        String sql="select * from glcs where bmmc = ?";
        GLCS glcs = template.queryForObject(sql, new BeanPropertyRowMapper<>(GLCS.class),bmmc);
        return glcs;
    }
    //管理处室名称
    public GLCS searchGlcsid(int id){
        String sql="select * from glcs where id =?";
        GLCS glcs = template.queryForObject(sql, new BeanPropertyRowMapper<>(GLCS.class),id);
        return glcs;
    }
    //形式审核
    public boolean xssh(int wjid,int sfsh,String xsscyj,int glcs){
        boolean flag=false;
        String sql="update dcwjxx set sfsh=?,xsscyj=?,glcs=? where WJID=?";
        int update = template.update(sql, sfsh, xsscyj, glcs, wjid);
        if (update >= 1) {
            flag = true;
        }
        return flag;
    }
    //部门审核
    public boolean bmsh(int wjid,int bmsfsh,String bmshyj){
        boolean flag=false;
        String sql="update dcwjxx set BMSFSH=?,BMSHTYJ=? where WJID=?";
        int update = template.update(sql, bmsfsh, bmshyj, wjid);
        if (update >= 1) {
            flag = true;
        }
        return flag;
    }
    //图表展示
    public List<TuShow> Tushow(String type){
        String sql=null;
        if (!type.equals("GLCS")){
            sql="select "+type+" as typeName,count("+type+") as TuNum from dcwjxx group by "+type+" ";
        }else {
            sql="select glcs.bmmc as typeName,count(*) as TuNum from dcwjxx join glcs where GLCS=glcs.id group by typeName";
        }
        System.out.println(sql);
        List<TuShow> tuShows = template.query(sql, new BeanPropertyRowMapper<>(TuShow.class));
        return tuShows;
    }
}
