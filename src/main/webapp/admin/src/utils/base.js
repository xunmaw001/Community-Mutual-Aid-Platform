const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm016gm/",
            name: "ssm016gm",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm016gm/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于vue的社区互助平台"
        } 
    }
}
export default base
