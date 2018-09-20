package com.ishop.pojo;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.util.Date;

@Table(name = "tc_users")
public class TcUsers {
    @Id
    @Column(name = "USER_ID")
    private Integer userId;

    /**
     * 账号
     */
    @Column(name = "LOGIN_NAME")
    private String loginName;

    /**
     * 安全码
     */
    @Column(name = "LOGIN_SECRET")
    private Integer loginSecret;

    /**
     * 密码
     */
    @Column(name = "LOGIN_PWD")
    private String loginPwd;

    /**
     * 用户类型0:普通会员 1:门店用户
     */
    @Column(name = "USER_TYPE")
    private Byte userType;

    /**
     * 性别	0:保密 1：男 2：女
     */
    @Column(name = "USER_SEX")
    private Byte userSex;

    /**
     * 用户名称
     */
    @Column(name = "USER_NAME")
    private String userName;

    /**
     * 真实姓名
     */
    @Column(name = "TRUE_NAME")
    private String trueName;

    /**
     * 生日
     */
    @Column(name = "BRITHDAY")
    private Date brithday;

    /**
     * 会员头像
     */
    @Column(name = "USER_PHOTO")
    private String userPhoto;

    /**
     * 会员qq
     */
    @Column(name = "USER_QQ")
    private String userQq;

    /**
     * 手机
     */
    @Column(name = "USER_PHONE")
    private String userPhone;

    /**
     * 邮箱
     */
    @Column(name = "USER_EMAIL")
    private String userEmail;

    /**
     * 用户积分
     */
    @Column(name = "USER_SCORE")
    private Integer userScore;

    /**
     * 用户历史消费积分	跟会员等级有关
     */
    @Column(name = "USER_TOTAL_SCORE")
    private Integer userTotalScore;

    /**
     * 最后登录IP
     */
    @Column(name = "LAST_IP")
    private String lastIp;

    /**
     * 最后登录时间
     */
    @Column(name = "LAST_TIME")
    private Date lastTime;

    /**
     * 第三方标识	0:系统本身；1:QQ登录
     */
    @Column(name = "USER_FROM")
    private Byte userFrom;

    /**
     * 用户钱包金额
     */
    @Column(name = "USER_MONEY")
    private BigDecimal userMoney;

    /**
     * 冻结金额
     */
    @Column(name = "LOCK_MONEY")
    private BigDecimal lockMoney;

    /**
     * 账号状态	0:停用 1:启用
     */
    @Column(name = "USER_STATUS")
    private Byte userStatus;

    /**
     * 删除标志	-1:删除 1:有效
     */
    @Column(name = "DATA_FLAG")
    private Byte dataFlag;

    /**
     * 创建时间
     */
    @Column(name = "CREATE_TIME")
    private Date createTime;

    /**
     * 支付密码
     */
    @Column(name = "PAY_PWD")
    private String payPwd;

    /**
     * @return USER_ID
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * 获取账号
     *
     * @return LOGIN_NAME - 账号
     */
    public String getLoginName() {
        return loginName;
    }

    /**
     * 设置账号
     *
     * @param loginName 账号
     */
    public void setLoginName(String loginName) {
        this.loginName = loginName == null ? null : loginName.trim();
    }

    /**
     * 获取安全码
     *
     * @return LOGIN_SECRET - 安全码
     */
    public Integer getLoginSecret() {
        return loginSecret;
    }

    /**
     * 设置安全码
     *
     * @param loginSecret 安全码
     */
    public void setLoginSecret(Integer loginSecret) {
        this.loginSecret = loginSecret;
    }

    /**
     * 获取密码
     *
     * @return LOGIN_PWD - 密码
     */
    public String getLoginPwd() {
        return loginPwd;
    }

    /**
     * 设置密码
     *
     * @param loginPwd 密码
     */
    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd == null ? null : loginPwd.trim();
    }

    /**
     * 获取用户类型0:普通会员 1:门店用户
     *
     * @return USER_TYPE - 用户类型0:普通会员 1:门店用户
     */
    public Byte getUserType() {
        return userType;
    }

    /**
     * 设置用户类型0:普通会员 1:门店用户
     *
     * @param userType 用户类型0:普通会员 1:门店用户
     */
    public void setUserType(Byte userType) {
        this.userType = userType;
    }

    /**
     * 获取性别	0:保密 1：男 2：女
     *
     * @return USER_SEX - 性别	0:保密 1：男 2：女
     */
    public Byte getUserSex() {
        return userSex;
    }

    /**
     * 设置性别	0:保密 1：男 2：女
     *
     * @param userSex 性别	0:保密 1：男 2：女
     */
    public void setUserSex(Byte userSex) {
        this.userSex = userSex;
    }

    /**
     * 获取用户名称
     *
     * @return USER_NAME - 用户名称
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 设置用户名称
     *
     * @param userName 用户名称
     */
    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    /**
     * 获取真实姓名
     *
     * @return TRUE_NAME - 真实姓名
     */
    public String getTrueName() {
        return trueName;
    }

    /**
     * 设置真实姓名
     *
     * @param trueName 真实姓名
     */
    public void setTrueName(String trueName) {
        this.trueName = trueName == null ? null : trueName.trim();
    }

    /**
     * 获取生日
     *
     * @return BRITHDAY - 生日
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
     * @return USER_PHOTO - 会员头像
     */
    public String getUserPhoto() {
        return userPhoto;
    }

    /**
     * 设置会员头像
     *
     * @param userPhoto 会员头像
     */
    public void setUserPhoto(String userPhoto) {
        this.userPhoto = userPhoto == null ? null : userPhoto.trim();
    }

    /**
     * 获取会员qq
     *
     * @return USER_QQ - 会员qq
     */
    public String getUserQq() {
        return userQq;
    }

    /**
     * 设置会员qq
     *
     * @param userQq 会员qq
     */
    public void setUserQq(String userQq) {
        this.userQq = userQq == null ? null : userQq.trim();
    }

    /**
     * 获取手机
     *
     * @return USER_PHONE - 手机
     */
    public String getUserPhone() {
        return userPhone;
    }

    /**
     * 设置手机
     *
     * @param userPhone 手机
     */
    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    /**
     * 获取邮箱
     *
     * @return USER_EMAIL - 邮箱
     */
    public String getUserEmail() {
        return userEmail;
    }

    /**
     * 设置邮箱
     *
     * @param userEmail 邮箱
     */
    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    /**
     * 获取用户积分
     *
     * @return USER_SCORE - 用户积分
     */
    public Integer getUserScore() {
        return userScore;
    }

    /**
     * 设置用户积分
     *
     * @param userScore 用户积分
     */
    public void setUserScore(Integer userScore) {
        this.userScore = userScore;
    }

    /**
     * 获取用户历史消费积分	跟会员等级有关
     *
     * @return USER_TOTAL_SCORE - 用户历史消费积分	跟会员等级有关
     */
    public Integer getUserTotalScore() {
        return userTotalScore;
    }

    /**
     * 设置用户历史消费积分	跟会员等级有关
     *
     * @param userTotalScore 用户历史消费积分	跟会员等级有关
     */
    public void setUserTotalScore(Integer userTotalScore) {
        this.userTotalScore = userTotalScore;
    }

    /**
     * 获取最后登录IP
     *
     * @return LAST_IP - 最后登录IP
     */
    public String getLastIp() {
        return lastIp;
    }

    /**
     * 设置最后登录IP
     *
     * @param lastIp 最后登录IP
     */
    public void setLastIp(String lastIp) {
        this.lastIp = lastIp == null ? null : lastIp.trim();
    }

    /**
     * 获取最后登录时间
     *
     * @return LAST_TIME - 最后登录时间
     */
    public Date getLastTime() {
        return lastTime;
    }

    /**
     * 设置最后登录时间
     *
     * @param lastTime 最后登录时间
     */
    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }

    /**
     * 获取第三方标识	0:系统本身；1:QQ登录
     *
     * @return USER_FROM - 第三方标识	0:系统本身；1:QQ登录
     */
    public Byte getUserFrom() {
        return userFrom;
    }

    /**
     * 设置第三方标识	0:系统本身；1:QQ登录
     *
     * @param userFrom 第三方标识	0:系统本身；1:QQ登录
     */
    public void setUserFrom(Byte userFrom) {
        this.userFrom = userFrom;
    }

    /**
     * 获取用户钱包金额
     *
     * @return USER_MONEY - 用户钱包金额
     */
    public BigDecimal getUserMoney() {
        return userMoney;
    }

    /**
     * 设置用户钱包金额
     *
     * @param userMoney 用户钱包金额
     */
    public void setUserMoney(BigDecimal userMoney) {
        this.userMoney = userMoney;
    }

    /**
     * 获取冻结金额
     *
     * @return LOCK_MONEY - 冻结金额
     */
    public BigDecimal getLockMoney() {
        return lockMoney;
    }

    /**
     * 设置冻结金额
     *
     * @param lockMoney 冻结金额
     */
    public void setLockMoney(BigDecimal lockMoney) {
        this.lockMoney = lockMoney;
    }

    /**
     * 获取账号状态	0:停用 1:启用
     *
     * @return USER_STATUS - 账号状态	0:停用 1:启用
     */
    public Byte getUserStatus() {
        return userStatus;
    }

    /**
     * 设置账号状态	0:停用 1:启用
     *
     * @param userStatus 账号状态	0:停用 1:启用
     */
    public void setUserStatus(Byte userStatus) {
        this.userStatus = userStatus;
    }

    /**
     * 获取删除标志	-1:删除 1:有效
     *
     * @return DATA_FLAG - 删除标志	-1:删除 1:有效
     */
    public Byte getDataFlag() {
        return dataFlag;
    }

    /**
     * 设置删除标志	-1:删除 1:有效
     *
     * @param dataFlag 删除标志	-1:删除 1:有效
     */
    public void setDataFlag(Byte dataFlag) {
        this.dataFlag = dataFlag;
    }

    /**
     * 获取创建时间
     *
     * @return CREATE_TIME - 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取支付密码
     *
     * @return PAY_PWD - 支付密码
     */
    public String getPayPwd() {
        return payPwd;
    }

    /**
     * 设置支付密码
     *
     * @param payPwd 支付密码
     */
    public void setPayPwd(String payPwd) {
        this.payPwd = payPwd == null ? null : payPwd.trim();
    }
}