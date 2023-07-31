<a name="iekIV"></a>
## 项目简介
**挚友汇**是基于** Vue 3 + Spring Boot 2** 的移动端网站，一个帮助大家寻觅志同道合的知己或伙伴的前后端分离项目（APP页面 风格），目前实现了用户登录注册、更新个人信息、按标签搜索用户、推荐相似兴趣用户、组队、创建队伍等功能。<br />	该项目基本覆盖了企业开发中常见的需求以及对应的解决方案，比如登录注册、批量数据导入、信息检索展示、定时任务、资源抢占等。并且涵盖了分布式、并发编程、锁、事务、缓存、性能优化、幂等性、数据一致性、大数据、算法等后端程序员必须了解的知识与实践。<br />**项目创新点：Redisson 分布式锁，Easy Excel 数据导入，Spring Scheduler 定时任务，Swagger + Knife4j 接口文档，Gson：JSON 序列化库，相似度匹配算法**等
<a name="i66Cw"></a>
## 技术选型
<a name="Twzy1"></a>
### 前端技术

- Vue 3开发框架
- Vant UI 组件库（基于 Vue 的移动端组件库）
- TypeScript
- Vite 脚手架（项目打包工具）
- V-Router 路由跳转
- Axios 请求库
- Nginx 单机部署
<a name="GCLxM"></a>
### 后端技术

- Java SpringBoot 2.7.x 框架
- SpringMVC 架构
- MySQL 数据库
- MyBatis-Plus
- MyBatis X 自动生成
- Redis 缓存（Spring Data Redis 等多种实现方式）
- Redisson 分布式锁
- Easy Excel 数据导入
- Spring Scheduler 定时任务
- Swagger + Knife4j 接口文档
- Gson：JSON 序列化库
- 相似度匹配算法
<a name="DMdTq"></a>
## 项目总结

1. 熟悉做项目的完整流程，能够独立开发及上线项目
2. 熟悉前后端企业主流开发技术（如 Vue 3、Spring Boot 等）的应用，提升开发经验
3. 掌握 Java 8 特性、接口文档、网页内容抓取、分布式登录、大数据量导入、并发编程、Redis、缓存及预热、定时任务、分布式锁、幂等性、算法等重要知识
4. 学到项目开发、调试和优化技巧，比如开发工具使用技巧、组件抽象封装、问题定位、性能优化、内存优化等
5. 帮助个人开拓思路，学习系统设计的方法和经验
6. 了解如何思考底层原理的方式、以及源码阅读技巧，提升自主解决问题的能力
<a name="AI6qG"></a>
## 项目搭建流程

1. 前端项目初始化 
   1. 脚手架
   2. 组件 / 类库引入
2. 前端页面设计及通用布局开发
3. 后端数据库表设计
4. 按标签搜索用户功能 
   1. 前端开发
   2. 后端开发
   3. 性能分析
   4. 接口调试
5. Swagger + Knife4j 接口文档整合
6. 后端分布式登录改造（Session 共享）
7. 用户登录功能开发
8. 修改个人信息功能开发
9. 主页开发（抽象通用列表组件）
10. 批量导入数据功能 
   1. 几种方案介绍及对比
   2. 测试及性能优化（并发编程）
11. 主页性能优化 
   1. 缓存和分布式缓存讲解
   2. Redis 讲解
   3. 缓存开发和注意事项
   4. 缓存预热设计与实现
   5. 定时任务介绍和实现
   6. 锁 / 分布式锁介绍
   7. 分布式锁注意事项讲解
   8. Redisson 分布式锁实战
   9. 控制定时任务执行的几种方案介绍及对比
12. 组队功能 
   1. 需求分析
   2. 系统设计
   3. 多个接口开发及测试
   4. 前端多页面开发
   5. 权限控制
13. 随机匹配功能 
   1. 匹配算法介绍及实现
   2. 性能优化及测试
14. 项目优化及完善
15. 宝塔部署上线前后端
<a name="ZWu3y"></a>
## 功能分析及页面展示：
**首页浏览：**用户访问地址，首先跳到首页，需要注册登录后才能访问到站点上的其他用户。
![输入图片说明](doc/cut01-%E9%A6%96%E9%A1%B5.png)

**用户登录：**已有账号的输入密码进行登录，未有账号的用户需要注册账号。<br />![02-登录页.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690814800915-836658f9-a137-489b-92bd-d3fd103caf4c.png#averageHue=%23fefefe&clientId=ue6f52f06-f70b-4&from=paste&height=536&id=ub3076266&originHeight=670&originWidth=373&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=13447&status=done&style=none&taskId=uf7fff39e-6131-40f4-865f-f09430af5bf&title=&width=298.4)<br />**用户注册：**注册账号需按要求填写个人信息，进行信息核验后方可注册成功，信息有误，会进行错误提示给用户，让其修改。<br />![03-注册页.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690814807019-f8f2427b-f06f-40ec-a9cd-b4ad2ac90525.png#averageHue=%23fefefe&clientId=ue6f52f06-f70b-4&from=paste&height=532&id=u59107e99&originHeight=665&originWidth=368&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=22187&status=done&style=none&taskId=ub31b5dd0-4aa9-4067-9149-73725d57dea&title=&width=294.4) ![04-新用户注册.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690814815769-331f3739-6f76-41f5-9440-a16301cad8f5.png#averageHue=%23fefefd&clientId=ue6f52f06-f70b-4&from=paste&height=530&id=u77bcecd7&originHeight=662&originWidth=366&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=18759&status=done&style=none&taskId=uf766edb3-599e-45c8-afcc-51813a6dff0&title=&width=292.8)<br />**登录首页：**用户输入账号密码后，登录后跳转到首页，页面刷新出其他用户信息。<br />![06-队伍页.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815036324-821947ad-36b1-4e4e-ba62-807868c2aa9d.png#averageHue=%23626965&clientId=ue6f52f06-f70b-4&from=paste&height=530&id=u22e6ea4e&originHeight=662&originWidth=371&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=80647&status=done&style=none&taskId=u7daa4be8-522c-4d9f-a728-1e7cd5dd526&title=&width=296.8)<br />**个人信息页：**展示当前用户登录昵称、修改个人信息、查看我创建的队伍和加入的队伍等功能。<br />![06-队伍页.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815157922-fdbff3bc-21d4-4d05-8d6a-c9df4d3923bd.png#averageHue=%23626965&clientId=ue6f52f06-f70b-4&from=paste&height=530&id=u926718bf&originHeight=662&originWidth=371&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=80647&status=done&style=none&taskId=udd8c5465-4ed8-4521-9b2f-7f5eb4cea0f&title=&width=296.8)<br />**个人信息详情页：**展示个人信息详细内容，修改个人信息和退出登录。<br />![08-个人信息详细页.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815318265-3d41072c-ba2b-4929-b9ba-1a69f22650e0.png#averageHue=%23fdfcfc&clientId=ue6f52f06-f70b-4&from=paste&height=534&id=u449e51b2&originHeight=667&originWidth=376&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=25285&status=done&style=none&taskId=u0c94232e-bf71-44c3-ac8c-54fb3bfc8f6&title=&width=300.8)

**创建队伍页：**用户根据个人兴趣爱好方向创建公开、私有、加密的队伍。<br />![09-创建队伍页.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815474061-80b323cf-1307-49d4-b5ca-1d566951bc35.png#averageHue=%23fefefe&clientId=ue6f52f06-f70b-4&from=drop&height=537&id=ufbc64343&originHeight=666&originWidth=373&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=19732&status=done&style=none&taskId=u931a2660-3f15-4506-8bcb-d8ba8fcdfc9&title=&width=301)  ![10-创建队伍1.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815479540-d1382f5f-d87c-49be-8c61-a1fb187966b9.png#averageHue=%23fefefd&clientId=ue6f52f06-f70b-4&from=paste&height=537&id=u43f942ee&originHeight=671&originWidth=372&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=26195&status=done&style=none&taskId=ud8dca6e7-ef3d-425d-95dc-86863f4b67b&title=&width=297.6)

**个人队伍页：**查看自己创建过的队伍，更新队伍信息。<br />![11-个人队伍页.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815607542-19ae4c06-78cf-4af6-8610-bdde410013f5.png#averageHue=%23bdb2a1&clientId=ue6f52f06-f70b-4&from=paste&height=503&id=ua00c70bd&originHeight=668&originWidth=365&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=37723&status=done&style=none&taskId=u6c31abe1-227d-4886-8fe3-9bbee109429&title=&width=275)<br />**加密队伍创建：**创建加密队伍需要设置加入密码，其他用户可以查看队伍信息，且加入队伍需要输入密码才行。<br />![17-加密队伍创建.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815718309-4e2eb3f3-d760-46f0-b52d-954e4cfc23a7.png#averageHue=%23fefefd&clientId=ue6f52f06-f70b-4&from=paste&height=534&id=u8f304c51&originHeight=667&originWidth=366&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=24276&status=done&style=none&taskId=u14247f59-87aa-49d3-84f5-80e87ab5575&title=&width=292.8)     ![18加密队伍展示.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815724245-3461468c-5c84-4be1-8260-30f7c9b367b2.png#averageHue=%23d2d9d8&clientId=ue6f52f06-f70b-4&from=paste&height=523&id=u92584fa9&originHeight=689&originWidth=367&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=85833&status=done&style=none&taskId=u7cfa0cda-d24a-46e1-9666-b5a84e98be3&title=&width=278.6000061035156)<br />**知己匹配功能：**根据标签进行优用户匹配，运用相似度计算算法 + 本地实时计算，帮助用户找到兴趣相投的知己伙伴。<br />![12-知己匹配算法.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815954587-f852ce5e-ebe3-4790-a06c-c01f5de6afb3.png#averageHue=%23bededb&clientId=ue6f52f06-f70b-4&from=paste&height=536&id=u7401c35d&originHeight=670&originWidth=368&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=102311&status=done&style=none&taskId=u625d003c-7714-45db-a982-8b23b9ed81b&title=&width=294.4)<br />**标签搜索页：**允许用户根据自定义标签标签去搜索其他用户，快速寻找知己伙伴。<br />![13-知己页.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690815964894-f042c41b-2df1-4424-8feb-ed42be123a57.png#averageHue=%23e6c89d&clientId=ue6f52f06-f70b-4&from=paste&height=538&id=u262d2eb0&originHeight=672&originWidth=366&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=18097&status=done&style=none&taskId=u8eda371f-49fc-4a8d-893b-50d5fd347d7&title=&width=292.8)   ![14-根据标签寻找.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690816047902-74a2a012-b338-487a-a20f-431b6db7aa8b.png#averageHue=%23e9cb9d&clientId=ue6f52f06-f70b-4&from=paste&height=538&id=udaff87f7&originHeight=673&originWidth=374&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=23127&status=done&style=none&taskId=uace4caf1-0583-4623-8d39-6c4d0d4a466&title=&width=299.2)<br />![15-寻找结果.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690816064332-2167d21c-a077-42de-a1bf-0c879808a989.png#averageHue=%23d4e5e3&clientId=ue6f52f06-f70b-4&from=paste&height=539&id=ubc249277&originHeight=674&originWidth=377&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=86033&status=done&style=none&taskId=ufcec9820-3f4e-45a4-81ba-6a8f5caa7cf&title=&width=301.6)<br />**队伍搜索页：**让用户更加关键词对理想队伍实现快速搜索功能。<br />![16-根据关键词寻找队伍.png](https://cdn.nlark.com/yuque/0/2023/png/33703126/1690816165540-60a00143-2b41-4fd1-99f1-f55588196fd4.png#averageHue=%23beb3a1&clientId=ue6f52f06-f70b-4&from=paste&height=539&id=u4a5f78c8&originHeight=674&originWidth=373&originalType=binary&ratio=1.25&rotation=0&showTitle=false&size=39406&status=done&style=none&taskId=u23100e30-fc7e-4fde-a2f2-9886ab455a4&title=&width=298.4)
<a name="qkqKP"></a>
### 挚友汇系统架构图（部分）：
![](https://cdn.nlark.com/yuque/0/2023/jpeg/33703126/1690811314882-8b63e91a-8139-4bd2-9ff9-ab653bd842b9.jpeg)

<br />个人博客：[https://www.cnblogs.com/zbcxy506/](https://www.cnblogs.com/zbcxy506/)<br />gitee地址：[https://gitee.com/g-abo/confidants-back-master](https://gitee.com/g-abo/confidants-back-master)

欢迎其他猿友一起讨论学习
