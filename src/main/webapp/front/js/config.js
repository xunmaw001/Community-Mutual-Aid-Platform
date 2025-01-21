
var projectName = '基于vue的社区互助平台';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
        name: '我的收藏',
        url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '租房信息',
	url: './pages/zufangxinxi/list.html'
}, 
{
	name: '失物招领',
	url: './pages/shiwuzhaoling/list.html'
}, 
{
	name: '宠物代遛',
	url: './pages/chongwudailiu/list.html'
}, 
{
	name: '停车位出租',
	url: './pages/tingcheweichuzu/list.html'
}, 
{
	name: '其他',
	url: './pages/qita/list.html'
}, 
{
	name: '趣事分享',
	url: './pages/qushifenxiang/list.html'
}, 

]

var adminurl =  "http://localhost:8080/ssm016gm/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["新增","查看","修改","删除","查看评论"],"menu":"租房信息","menuJump":"列表","tableName":"zufangxinxi"}],"menu":"租房信息管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除","查看评论"],"menu":"失物招领","menuJump":"列表","tableName":"shiwuzhaoling"}],"menu":"失物招领管理"},{"child":[{"appFrontIcon":"cuIcon-goodsnew","buttons":["新增","查看","修改","删除","查看评论"],"menu":"宠物代遛","menuJump":"列表","tableName":"chongwudailiu"}],"menu":"宠物代遛管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["新增","查看","修改","删除","查看评论"],"menu":"停车位出租","menuJump":"列表","tableName":"tingcheweichuzu"}],"menu":"停车位出租管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["新增","查看","修改","删除","查看评论"],"menu":"其他","menuJump":"列表","tableName":"qita"}],"menu":"其他管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["新增","查看","修改","删除","查看评论"],"menu":"趣事分享","menuJump":"列表","tableName":"qushifenxiang"}],"menu":"趣事分享管理"},{"child":[{"appFrontIcon":"cuIcon-favor","buttons":["新增","查看","修改","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-medal","buttons":["新增","查看","修改","删除"],"menu":"客服管理","tableName":"chat"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","查看评论"],"menu":"租房信息列表","menuJump":"列表","tableName":"zufangxinxi"}],"menu":"租房信息模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看","查看评论"],"menu":"失物招领列表","menuJump":"列表","tableName":"shiwuzhaoling"}],"menu":"失物招领模块"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","查看评论"],"menu":"宠物代遛列表","menuJump":"列表","tableName":"chongwudailiu"}],"menu":"宠物代遛模块"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","查看评论"],"menu":"停车位出租列表","menuJump":"列表","tableName":"tingcheweichuzu"}],"menu":"停车位出租模块"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看","查看评论"],"menu":"其他列表","menuJump":"列表","tableName":"qita"}],"menu":"其他模块"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","查看评论"],"menu":"趣事分享列表","menuJump":"列表","tableName":"qushifenxiang"}],"menu":"趣事分享模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","新增","删除","查看评论"],"menu":"租房信息","menuJump":"列表","tableName":"zufangxinxi"}],"menu":"租房信息管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","新增","删除","查看评论"],"menu":"失物招领","menuJump":"列表","tableName":"shiwuzhaoling"}],"menu":"失物招领管理"},{"child":[{"appFrontIcon":"cuIcon-goodsnew","buttons":["查看","新增","删除","查看评论"],"menu":"宠物代遛","menuJump":"列表","tableName":"chongwudailiu"}],"menu":"宠物代遛管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["查看","新增","删除","查看评论"],"menu":"停车位出租","menuJump":"列表","tableName":"tingcheweichuzu"}],"menu":"停车位出租管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","新增","删除","查看评论"],"menu":"其他","menuJump":"列表","tableName":"qita"}],"menu":"其他管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["查看","新增","删除","查看评论"],"menu":"趣事分享","menuJump":"列表","tableName":"qushifenxiang"}],"menu":"趣事分享管理"},{"child":[{"appFrontIcon":"cuIcon-favor","buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看"],"menu":"客服管理","tableName":"chat"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","查看评论"],"menu":"租房信息列表","menuJump":"列表","tableName":"zufangxinxi"}],"menu":"租房信息模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看","查看评论"],"menu":"失物招领列表","menuJump":"列表","tableName":"shiwuzhaoling"}],"menu":"失物招领模块"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","查看评论"],"menu":"宠物代遛列表","menuJump":"列表","tableName":"chongwudailiu"}],"menu":"宠物代遛模块"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","查看评论"],"menu":"停车位出租列表","menuJump":"列表","tableName":"tingcheweichuzu"}],"menu":"停车位出租模块"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看","查看评论"],"menu":"其他列表","menuJump":"列表","tableName":"qita"}],"menu":"其他模块"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","查看评论"],"menu":"趣事分享列表","menuJump":"列表","tableName":"qushifenxiang"}],"menu":"趣事分享模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
