<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="layui/css/layui.css" />
    <script type="text/javascript" src="layui/layui.js "></script>
    <link rel="stylesheet" href="css/admin.css" />
    <link rel="stylesheet" href="css/template.css" />
    <link rel="stylesheet" href="css/博客页面.css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/操作.js"></script>
    <title>主界面</title>
</head>
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title header">
        <li class="layui-this">我的主页</li>
        <%--<li>动态发布</li>
        <li id="do">动态管理</li>--%>
    </ul>
    <div class="layui-tab-content">
        <!-- 主页部分 -->
        <div
                class="layui-fluid layadmin-homepage-fluid layui-tab-item layui-show">
            <div class="layui-row layui-col-space8">
                <div class="layui-col-md2">
                    <div class="layadmin-homepage-panel layadmin-homepage-shadow">
                        <div class="layui-card text-center">
                            <div class="layui-card-body">

                                <div class="avatar">
                                    <img src="imgs/11.jpg" width="100" height="100"/> <a href="javascript:;">
                                    </a>
                                </div>
                                <span>昵称</span><br>
                                <h4 class="layadmin-homepage-font">${user.username}</h4>
                                <p class="layadmin-homepage-min-font">职业</p>

                                <div class="layadmin-homepage-pad-ver">
                                    <a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>
                                    <a href="javascript:;" class="layui-icon layui-icon-vercode"></a>
                                    <a href="javascript:;"
                                       class="layui-icon layui-icon-login-wechat"></a> <a
                                        href="javascript:;" class="layui-icon layui-icon-login-qq"></a>
                                </div>
                                <button class="layui-btn layui-btn-fluid">跟随</button>
                            </div>
                        </div>
                        <p class="layadmin-homepage-about">关于我</p>
                        <ul class="layadmin-homepage-list-group">
                            <li class="list-group-item"><i
                                    class="layui-icon layui-icon-location"></i>中国江西</li>
                            <li class="list-group-item"><a href="javascript:;"
                                                           class="color"><i class="layui-icon layui-icon-snowflake"></i><span
                                    style="word-wrap: break-word;">https://weibo.com/hu_ge</span></a></li>
                        </ul>
                        <div class="layadmin-homepage-pad-hor">
                            <mdall>信息</mdall>
                        </div>
                        <p class="layadmin-homepage-about">爱好</p>
                        <ul class="layadmin-homepage-list-inline">
                            <a href="javascript:;" class="layui-btn layui-btn-primary">唱歌</a>
                            <a href="javascript:;" class="layui-btn layui-btn-primary">听歌</a>
                            <a href="javascript:;" class="layui-btn layui-btn-primary">玩游戏</a>
                            <a href="javascript:;" class="layui-btn layui-btn-primary">学习</a>
                            <a href="javascript:;" class="layui-btn layui-btn-primary">运动</a>
                        </ul>
                    </div>
                </div>

                <div class="layui-col-md10">
                    <div class="layui-fluid layadmin-homepage-content">
                        <div class="layui-row  layadmin-homepage-padding15">
                            <hr class="new-section-xs"></hr>
                            <div class="layui-col-md7 layadmin-homepage-padding8">
                                <div class="layui-row layadmin-homepage-text-center">
                                    <div class="layui-col-md3 layui-col-sm3 layui-col-xs3">
                                        <p class="h4" id="likesum">今天</p>
                                        <mdall>好好努力</mdall>
                                    </div>
                                    <%--<div class="layui-col-md3 layui-col-sm3 layui-col-xs3">
                                        <p class="h4" id="allsum">0</p>
                                        <mdall>评论数</mdall>
                                    </div>--%>
                                    <div class="layui-col-md3 layui-col-sm3 layui-col-xs3">
                                        <p class="h4" id="bSum">明天</p>
                                        <mdall>天天向上</mdall>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md5">
                                <a href="http://localhost:8080/brand-case/study.html" class="layui-btn layui-btn-normal link-typed" onclick="forward">我的学习资源</a>
                                <a href="http://localhost:8080/brand-case/question.html" class="layui-btn layui-btn-normal link-typed" onclick="forward">C语言测试题库</a>
                            <%--<a href="javascript:;" class="layui-btn layui-btn-normal link-typed" >所有博客</a>--%>
                            </div>
                        </div>
                        <!-- 顶部 -->
                        <div
                                class="layui-row layui-col-space20 layadmin-homepage-list-imgtxt">
                            <div class="layui-col-md9"
                                 style="overflow-y: scroll; height: 600px;">

                                <div class="grid-demo" id="#divBoke">


                                    <div class="panel-body layadmin-homepage-shadow" id="zbk">
                                        <a href="javascript:;" class="media-left"> <img
                                                src="imgs/10.jpeg" height="46px" width="46px">
                                        </a>
                                        <div class="media-body">
                                            <div class="pad-btm">
                                                <p class="fontColor">
                                                    <a href="javascript:;">${user.username}
                                                    </a>添加了新的<span>学习资源</span>
                                                </p>
                                                <p class="min-font">
                                                    <a href="javascript:;  "
                                                       class="layui-icon layui-icon-cellphone"> </a> <%--<a
                                                        href="javascript:;">-时间</a> --%><%--<a
                                                        href="javascript:/study.html;">-类别</a>--%>
                                                </p>

                                            </div>
                                            <article>
                                                <h2 class="title">
                                                    <a href="javascript:;"><c:out value="" default="博客标题"/></a>
                                                </h2>

                                                <div class="text">

                                                    <%--&lt;%&ndash;<p>博客内容</p>

                                                    <p class="textimg">
                                                    <img src="imgs/11.jpg" height="100" width="100">
                                                </p>&ndash;%&gt;

                                                <p>文章内容</p>

                                                </div>
                                                <div class="textfoot">
                                                    <a href="javascript:;" onclick=""  class="link-a">
                                                        <i class="foot1 layui-icon foot3 ">&#xe68f; </i>
                                                        <span class="layui-badge">0</span>
                                                    </a>
                                                    <a href="javascript:;" onclick="" class=" link-b">
                                                        <i class="foot1 layui-icon foot3" >&#xe611;</i>
                                                        <span class="layui-badge">0</span>
                                                    </a>
                                                </div>
                                                <div class="pl">
                                                    <div class="layui-fluid layadmin-message-fluid">

                                                        <div class="layui-row">
                                                            <div class="layui-col-md12 flag">
                                                                <form class="layui-form" action="" method="post">
                                                                    <div class="layui-form-item layui-form-text">
                                                                        <div class="layui-input-block">
                                                                            <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                                                                        </div>
                                                                    </div>

                                                                    <div class="layui-form-item" style="overflow: hidden;">
                                                                        <div class="layui-input-block layui-input-right">
                                                                            <input type="submit" value="发表" class="layui-btn express" onclick="addBrand">
                                                                        </div>
                                                                        <div class="layadmin-messag-icon">
                                                                            <a href="javascript:;"><i class="layui-icon layui-icon-face-smile-b"></i></a>
                                                                            <a href="javascript:;"><i class="layui-icon layui-icon-picture"></i></a>
                                                                            <a href="javascript:;"><i class="layui-icon layui-icon-link"></i></a>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>


                                                            <div class="layui-col-md12 layadmin-homepage-list-imgtxt message-content mycomment">

                                                                <div class='media-body comment'>

                                                                    <a href='javascript:;' class='media-left' style='float: left;'>
                                                                        <img src='imgs/10.jpeg'height='35px' width='35px'>
                                                                    </a>

                                                                    <div class='pad-btm comment1'>
                                                                        <p class='fontColor'>
                                                                            <a href='javascript:;'></a>
                                                                        </p>
                                                                    </div>

                                                                    <p class='message-text'></p>
                                                                    <a href='javascript:;' onclick=""  class='deletecom'><span class='layui-icon layui-icon-close'></span></a>

                                                                </div>

                                                            </div>


                                                        </div>
                                                    </div>
                                                    <button type="button" class="pl4 layui-btn layui-btn-normal" >收起</button>
                                                </div>
                                            </article>
                                        </div>
                                    </div>--%>

                                </div>

                            </div>

                            <%--<div class="layui-col-md3">
                                <div class="grid-demo">

                                    <div class="layui-card homepage-bottom">
                                        <div class="layui-card-header">
                                            <h3 class="panel-title">
                                                <i class="layui-icon layui-icon-search"></i> 搜索
                                            </h3>
                                        </div>
                                        <div class="layui-card-body">

                                            <form action="" class="sosuo"
                                                  method="post">
                                                <input type="text" class="sosuok" placeholder="标题/类别"
                                                       name="sousuo" /> <input type="submit" class="sosuok1"
                                                                               value="搜索" />
                                            </form>

                                            <br />
                                        </div>

                                    </div>

                                    <div class="layui-card homepage-top">
                                        <div class="layui-card-header">
                                            <h3 class="panel-title">
                                                <i class="layui-icon layui-icon-list"></i> 博客分类
                                            </h3>
                                        </div>
                                        <div class="layui-card-body">
                                            <ul class="layadmin-homepage-list-inline">
                                                <li><a href="javascript:;" class="layui-btn layui-btn-primary">博客类别1</a></li>
                                                <li><a href="javascript:;" class="layui-btn layui-btn-primary">博客类别2</a></li>
                                                <li><a href="javascript:;" class="layui-btn layui-btn-primary">博客类别3</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 发布动态 -->
        <%--<div class="layui-tab-item ">
            <div style="width: 50%; margin-left: 20%">
                <form class="layui-form"  action="" method="post">
                    <div class="layui-form-item">
                        <label class="layui-form-label">标题</label>
                        <div class="layui-input-block">
                            <input type="text" v-model  name="title" required lay-verify="required"
                                   placeholder="请输入标题" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">类别</label>
                        <div class="layui-input-block">
                            <input type="text" name="blogsc" required lay-verify="required"
                                   placeholder="类别" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">内容</label>
                        <div class="layui-input-block">
                            <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button type="submit" class="layui-btn" lay-filter="formDemo">发布</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>--%>
        <!-- 排行 -->
        <div class="layui-tab-item " id="paiheng">
            <table class="layui-table">
                <colgroup>
                    <col width="200">
                    <col width="200">
                    <col width="200">
                    <col width="200">
                    <col width="200">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>标题</th>
                    <th>发布时间</th>
                    <th>获赞数</th>
                    <th>评论数</th>
                    <th>发布者</th>
                    <th>类别</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td class="like"></td>
                    <td class="com"></td>
                    <td></td>
                    <td></td>
                    <td>
                        <a href='javascript:;' onclick=""><i class="layui-icon layui-icon-edit link-write" style="font-size: 25px"></i></a>/
                        <a href="javascript:;"><i class="layui-icon layui-icon-delete link-delete"style="font-size: 25px"></i></a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="js/vue.js"></script>
<script src="element-ui/lib/index.js"></script>
<script src="js/axios-0.18.0.js"></script>
<script>
    forward
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function() {
        var element = layui.element;

    });
    //Demo
    layui.use('form', function() {
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
    new Vue({
        el: "#app",
        mounted() {
            //在页面加载完成之后，发送异步请求，获取数据
            this.selectAll();
        },
        methods: {
            //跳转页面
            forward(){

            }
        },
        data() {
            return {
                //数据上传
                fileList: [],
                //复选框选中的id
                selectedIds:[],
                //每页默认显示条数
                pageSize:5,
                //当前页面总数据
                totalCount:100,
                // 当前页码
                currentPage: 1,
                // 添加数据对话框是否展示的标记
                dialogVisible: false,
                updateVisible: false,
                // 品牌模型数据
                brand: {
                    status: '',
                    brandName: '',
                    companyName: '',
                    id: "",
                    ordered: "",
                    description: ""
                },
                // 复选框选中数据集合
                multipleSelection: [],
                // 表格数据
                tableData: [{
                    brandName: '华为',
                    companyName: '华为科技有限公司',
                    ordered: '100',
                    status: "1"
                }]
            }
        }
    })

</script>
</body>
</html>







