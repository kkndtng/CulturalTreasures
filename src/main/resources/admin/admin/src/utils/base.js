const base = {
    get() {
                return {
            url : "http://localhost:8080/CulturalTreasures/",
            name: "CulturalTreasures",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/CulturalTreasures/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "旅游网站设计"
        } 
    }
}
export default base
