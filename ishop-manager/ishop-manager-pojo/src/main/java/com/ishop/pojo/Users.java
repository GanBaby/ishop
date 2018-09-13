package com.ishop.pojo;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.util.Date;

@Table(name = "tc_users")
public class Users {
    @Id
    @Column(name = "userId")
    private Integer userid;

    /**
     * 账号
     */
    @Column(name = "loginName")
    private String loginname;

    /**
     * 安全码
     */
    @Column(name = "loginSecret")
    private Integer loginsecret;

    /**
     * 密码
     */
    @Column(name = "loginPwd")
    private String loginpwd;

    /**
     * 用户类型0:普通会员 1:门店用户
     */
    @Column(name = "userType")
    private Byte usertype;

    /**
     * 性别	0:保密 1：男 2：女
     */
    @Column(name = "userSex")
    private Byte usersex;

    /**
     * 用户名称
     */
    @Column(name = "userName")
    private String username;

    /**
     * 真实姓名
     */
    @Column(name = "trueName")
    private String truename;

    /**
     * 生日
     */
    private Date brithday;

    /**
     * 会员头像
     */
    @Column(name = "userPhoto")
    private String userphoto;

    /**
     * 会员qq
     */
    @Column(name = "userQQ")
    private String userqq;

    /**
     * 手机
     */
    @Column(name = "userPhone")
    private String userphone;

    /**
     * 邮箱
     */
    @Column(name = "userEmail")
    private String useremail;

    /**
     * 用户积分
     */
    @Column(name = "userScore")
    private Integer userscore;

    /**
     * 用户历史消费积分	跟会员等级有关
     */
    @Column(name = "userTotalScore")
    private Integer usertotalscore;

    /**
     * 最后登录IP
     */
    @Column(name = "lastIP")
    private String lastip;

    /**
     * 最后登录时间
     */
    @Column(name = "lastTime")
    private Date lasttime;

    /**
     * 第三方标识	0:系统本身；1:QQ登录
     */
    @Column(name = "userFrom")
    private Byte userfrom;

    /**
     * 用户钱包金额
     */
    @Column(name = "userMoney")
    private BigDecimal usermoney;

    /**
     * 冻结金额
     */
    @Column(name = "lockMoney")
    private BigDecimal lockmoney;

    /**
     * 账号状态	0:停用 1:启用
     */
    @Column(name = "userStatus")
    private Byte userstatus;

    /**
     * 删除标志	-1:删除 1:有效
     */
    @Column(name = "dataFlag")
    private Byte dataflag;

    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private Date createtime;

    /**
     * 支付密码
     */
    @Column(name = "payPwd")
    private String paypwd;

    /**
     * @return userId
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * @param userid
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * 获取账号
     *
     * @return loginName - 账号
     */
    public String getLoginname() {
        return loginname;
    }

    /**
     * 设置账号
     *
     * @param loginname 账号
     */
    public void setLoginname(String loginname) {
        this.loginname = loginname == null ? null : loginname.trim();
    }

    /**
     * 获取安全码
     *
     * @return loginSecret - 安全码
     */
    public Integer getLoginsecret() {
        return loginsecret;
    }

    /**
     * 设置安全码
     *
     * @param loginsecret 安全码
     */
    public void setLoginsecret(Integer loginsecret) {
        this.loginsecret = loginsecret;
    }

    /**
     * 获取密码
     *
     * @return loginPwd - 密码
     */
    public String getLoginpwd() {
        return loginpwd;
    }

    /**
     * 设置密码
     *
     * @param loginpwd 密码
     */
    public void setLoginpwd(String loginpwd) {
        this.loginpwd = loginpwd == null ? null : loginpwd.trim();
    }

    /**
     * 获取用户类型0:普通会员 1:门店用户
     *
     * @return userType - 用户类型0:普通会员 1:门店用户
     */
    public Byte getUsertype() {
        return usertype;
    }

    /**
     * 设置用户类型0:普通会员 1:门店用户
     *
     * @param usertype 用户类型0:普通会员 1:门店用户
     */
    public void setUsertype(Byte usertype) {
        this.usertype = usertype;
    }

    /**
     * 获取性别	0:保密 1：男 2：女
     *
     * @return userSex - 性别	0:保密 1：男 2：女
     */
    public Byte getUsersex() {
        return usersex;
    }

    /**
     * 设置性别	0:保密 1：男 2：女
     *
     * @param usersex 性别	0:保密 1：男 2：女
     */
    public void setUsersex(Byte usersex) {
        this.usersex = usersex;
    }

    /**
     * 获取用户名称
     *
     * @return userName - 用户名称
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置用户名称
     *
     * @param username 用户名称
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * 获取真实姓名
     *
     * @return trueName - 真实姓名
     */
    public String getTruename() {
        return truename;
    }

    /**
     * 设置真实姓名
     *
     * @param truename 真实姓名
     */
    public void setTruename(String truename) {
        this.truename = truename == null ? null : truename.trim();
    }

    /**
     * 获取生日
     *
     * @return brithday - 生日
     */
    public Date getBrithday() {
        return brithday;
    }

    /**
     * 设置生日
     *
     * @param brithday 生日
     */
    public void setBrithday(Date brithday) {
        this.brithday = brithday;
    }

    /**
     * 获取会员头像
     *
     * @return userPhoto - 会员头像
     */
    public String getUserphoto() {
        return userphoto;
    }

    /**
     * 设置会员头像
     *
     * @param userphoto 会员头像
     */
    public void setUserphoto(String userphoto) {
        this.userphoto = userphoto == null ? null : userphoto.trim();
    }

    /**
     * 获取会员qq
     *
     * @return userQQ - 会员qq
     */
    public String getUserqq() {
        return userqq;
    }

    /**
     * 设置会员qq
     *
     * @param userqq 会员qq
     */
    public void setUserqq(String userqq) {
        this.userqq = userqq == null ? null : userqq.trim();
    }

    /**
     * 获取手机
     *
     * @return userPhone - 手机
     */
    public String getUserphone() {
        return userphone;
    }

    /**
     * 设置手机
     *
     * @param userphone 手机
     */
    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    /**
     * 获取邮箱
     *
     * @return userEmail - 邮箱
     */
    public String getUseremail() {
        return useremail;
    }

    /**
     * 设置邮箱
     *
     * @param useremail 邮箱
     */
    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    /**
     * 获取用户积分
     *
     * @return userScore - 用户积分
     */
    public Integer getUserscore() {
        return userscore;
    }

    /**
     * 设置用户积分
     *
     * @param userscore 用户积分
     */
    public void setUserscore(Integer userscore) {
        this.userscore = userscore;
    }

    /**
     * 获取用户历史消费积分	跟会员等级有关
     *
     * @return userTotalScore - 用户历史消费积分	跟会员等级有关
     */
    public Integer getUsertotalscore() {
        return usertotalscore;
    }

    /**
     * 设置用户历史消费积分	跟会员等级有关
     *
     * @param usertotalscore 用户历史消费积分	跟会员等级有关
     */
    public void setUsertotalscore(Integer usertotalscore) {
        this.usertotalscore = usertotalscore;
    }

    /**
     * 获取最后登录IP
     *
     * @return lastIP - 最后登录IP
     */
    public String getLastip() {
        return lastip;
    }

    /**
     * 设置最后登录IP
     *
     * @param lastip 最后登录IP
     */
    public void setLastip(String lastip) {
        this.lastip = lastip == null ? null : lastip.trim();
    }

    /**
     * 获取最后登录时间
     *
     * @return lastTime - 最后登录时间
     */
    public Date getLasttime() {
        return lasttime;
    }

    /**
     * 设置最后登录时间
     *
     * @param lasttime 最后登录时间
     */
    public void setLasttime(Date lasttime) {
        this.lasttime = lasttime;
    }

    /**
     * 获取第三方标识	0:系统本身；1:QQ登录
     *
     * @return userFrom - 第三方标识	0:系统本身；1:QQ登录
     */
    public Byte getUserfrom() {
        return userfrom;
    }

    /**
     * 设置第三方标识	0:系统本身；1:QQ登录
     *
     * @param userfrom 第三方标识	0:系统本身；1:QQ登录
     */
    public void setUserfrom(Byte userfrom) {
        this.userfrom = userfrom;
    }

    /**
     * 获取用户钱包金额
     *
     * @return userMoney - 用户钱包金额
     */
    public BigDecimal getUsermoney() {
        return usermoney;
    }

    /**
     * 设置用户钱包金额
     *
     * @param usermoney 用户钱包金额
     */
    public void setUsermoney(BigDecimal usermoney) {
        this.usermoney = usermoney;
    }

    /**
     * 获取冻结金额
     *
     * @return lockMoney - 冻结金额
     */
    public BigDecimal getLockmoney() {
        return lockmoney;
    }

    /**
     * 设置冻结金额
     *
     * @param lockmoney 冻结金额
     */
    public void setLockmoney(BigDecimal lockmoney) {
        this.lockmoney = lockmoney;
    }

    /**
     * 获取账号状态	0:停用 1:启用
     *
     * @return userStatus - 账号状态	0:停用 1:启用
     */
    public Byte getUserstatus() {
        return userstatus;
    }

    /**
     * 设置账号状态	0:停用 1:启用
     *
     * @param userstatus 账号状态	0:停用 1:启用
     */
    public void setUserstatus(Byte userstatus) {
        this.userstatus = userstatus;
    }

    /**
     * 获取删除标志	-1:删除 1:有效
     *
     * @return dataFlag - 删除标志	-1:删除 1:有效
     */
    public Byte getDataflag() {
        return dataflag;
    }

    /**
     * 设置删除标志	-1:删除 1:有效
     *
     * @param dataflag 删除标志	-1:删除 1:有效
     */
    public void setDataflag(Byte dataflag) {
        this.dataflag = dataflag;
    }

    /**
     * 获取创建时间
     *
     * @return createTime - 创建时间
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * 设置创建时间
     *
     * @param createtime 创建时间
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 获取支付密码
     *
     * @return payPwd - 支付密码
     */
    public String getPaypwd() {
        return paypwd;
    }

    /**
     * 设置支付密码
     *
     * @param paypwd 支付密码
     */
    public void setPaypwd(String paypwd) {
        this.paypwd = paypwd == null ? null : paypwd.trim();
    }

    @Override
    public String toString() {
        return "Users{" +
                "userid=" + userid +
                ", loginname='" + loginname + '\'' +
                ", loginsecret=" + loginsecret +
                ", loginpwd='" + loginpwd + '\'' +
                ", usertype=" + usertype +
                ", usersex=" + usersex +
                ", username='" + username + '\'' +
                ", truename='" + truename + '\'' +
                ", brithday=" + brithday +
                ", userphoto='" + userphoto + '\'' +
                ", userqq='" + userqq + '\'' +
                ", userphone='" + userphone + '\'' +
                ", useremail='" + useremail + '\'' +
                ", userscore=" + userscore +
                ", usertotalscore=" + usertotalscore +
                ", lastip='" + lastip + '\'' +
                ", lasttime=" + lasttime +
                ", userfrom=" + userfrom +
                ", usermoney=" + usermoney +
                ", lockmoney=" + lockmoney +
                ", userstatus=" + userstatus +
                ", dataflag=" + dataflag +
                ", createtime=" + createtime +
                ", paypwd='" + paypwd + '\'' +
                '}';
    }
}