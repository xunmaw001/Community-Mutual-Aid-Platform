import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import tingcheweichuzu from '@/views/modules/tingcheweichuzu/list'
    import discussqita from '@/views/modules/discussqita/list'
    import discussqushifenxiang from '@/views/modules/discussqushifenxiang/list'
    import chongwudailiu from '@/views/modules/chongwudailiu/list'
    import storeup from '@/views/modules/storeup/list'
    import discusszufangxinxi from '@/views/modules/discusszufangxinxi/list'
    import shiwuzhaoling from '@/views/modules/shiwuzhaoling/list'
    import qita from '@/views/modules/qita/list'
    import qushifenxiang from '@/views/modules/qushifenxiang/list'
    import discusschongwudailiu from '@/views/modules/discusschongwudailiu/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import discusstingcheweichuzu from '@/views/modules/discusstingcheweichuzu/list'
    import config from '@/views/modules/config/list'
    import zufangxinxi from '@/views/modules/zufangxinxi/list'
    import discussshiwuzhaoling from '@/views/modules/discussshiwuzhaoling/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/tingcheweichuzu',
        name: '停车位出租',
        component: tingcheweichuzu
      }
      ,{
	path: '/discussqita',
        name: '其他评论',
        component: discussqita
      }
      ,{
	path: '/discussqushifenxiang',
        name: '趣事分享评论',
        component: discussqushifenxiang
      }
      ,{
	path: '/chongwudailiu',
        name: '宠物代遛',
        component: chongwudailiu
      }
      ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
      ,{
	path: '/discusszufangxinxi',
        name: '租房信息评论',
        component: discusszufangxinxi
      }
      ,{
	path: '/shiwuzhaoling',
        name: '失物招领',
        component: shiwuzhaoling
      }
      ,{
	path: '/qita',
        name: '其他',
        component: qita
      }
      ,{
	path: '/qushifenxiang',
        name: '趣事分享',
        component: qushifenxiang
      }
      ,{
	path: '/discusschongwudailiu',
        name: '宠物代遛评论',
        component: discusschongwudailiu
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/chat',
        name: '客服管理',
        component: chat
      }
      ,{
	path: '/discusstingcheweichuzu',
        name: '停车位出租评论',
        component: discusstingcheweichuzu
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/zufangxinxi',
        name: '租房信息',
        component: zufangxinxi
      }
      ,{
	path: '/discussshiwuzhaoling',
        name: '失物招领评论',
        component: discussshiwuzhaoling
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
