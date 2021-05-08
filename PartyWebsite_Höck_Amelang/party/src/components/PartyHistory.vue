<template>
<div>
 <section class="content-container2">
        <div class="content-heding">
            <h1 class="content-title">Party History</h1>
            <h2 class="content-subtitle">Unsere Partys</h2>
        </div>
        <div class="content">
            <div class="content-card-img">
                <img src="https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" style="width:400px; height:300px;" alt="">
            </div>
            <div class="content-card-text">
                <h3 class="card-title">Lorem, ipsum.</h3>
                <div class="card-text-top">
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officia, dolores impedit? Nostrum illum quae optio libero minima voluptate assumenda vel!
                </div>
                <div class="card-text-bottom">
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Deleniti enim atque voluptatum dignissimos fuga perspiciatis corporis aliquam harum magni veritatis maxime earum cum, corrupti officiis nemo assumenda, fugit nulla quo.
                </div>
            </div>
            <div class="content-card-img">
                <img src="https://images.unsplash.com/photo-1485872299829-c673f5194813?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=782&q=80" style="height: 300px; width:300px;" alt="">
            </div>

        
            <div class="content-card-text">
                <h3 class="card-title">Lorem, ipsum 240.</h3>
                <div class="card-text-top">
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officia, dolores impedit? Nostrum illum quae optio libero minima voluptate assumenda vel!
                </div>
                <div class="card-text-bottom">
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Deleniti enim atque voluptatum dignissimos fuga perspiciatis corporis aliquam harum magni veritatis maxime earum cum, corrupti officiis nemo assumenda, fugit nulla quo.
                </div>
                <a href="https://www.swr.de/swr1/bw/programm/was-ist-in-corona-zeiten-erlaubt-100.html" class="btn2">more info</a>
            </div>
            <div class="content-card-img__large">
                <img src="https://images.unsplash.com/photo-1517457373958-b7bdd4587205?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" style="width:500px; height:300px;" alt="">
            </div>
        </div>
    </section>
</div>

</template>

<script>
export default {

}
</script>

<style>
.content-container2 {
    top: 0;
    max-width: 100%;
    background: white;
    padding-bottom: 2em;
}
.content{
    margin: 0 auto;
    margin-top: 8.5em; 
    display: grid;
    grid-template-columns: auto auto auto;
    grid-gap: 1em;
    max-width: 70%;
    background: white;
    padding: 2em;
}
.content-heading{
    position: center;
}
.card{
    background-color: #14141411;
    padding: 2em;
}
.content-title{
    text-align: center;
    font-weight: 600;
    margin-top:  1em;
    margin-bottom: 0;
    font-family: 'Indie Flower', cursive;
    font-size: xx-large;
    color: #4c4a54;
    padding-top: 0em;
}
.content-subtitle{
    text-align: center;
    font-weight: 100;
    margin: 0;
    font-family: 'Raleway', sans-serif;
    font-size: medium;
}
.content-card-img{
    margin: 1em;
}
.content-card-img__large{
    grid-column: 2/4;
    border-radius: 1em;
}
.content-card-img img{
    border-radius: 1em;
    margin-top: 2em;
    box-shadow: 1px 2px 4px rgba(0,0,0,.4);
}
.content-card-img__large img {
    margin: 2em;
    border-radius: 1em;
    box-shadow: 1px 2px 4px rgba(0,0,0,.4);
}
.content-card-text {
    text-align: center;
    padding: 0em;
}
.card-title{
    font-family: 'Indie Flower', cursive;
    font-size: x-large;
    color: #4c4a54;
}
.card-text-top{
    margin-top: 1em;
    margin-bottom: 1em;
    padding: 0.5em;
    background-color: #14141411;
    border-radius: 1em;
}
.card-text-bottom{
    margin-bottom: 2em;
    padding: 0.5em;
    background-color: #14141411;
    border-radius: 1em;
}

.btn {
    margin-top: 2em;
    padding: 0.5em;
    background-color: #12121222;
    text-decoration: none;
    color: black;
    border-radius: 1em ;
    box-shadow: 1px 2px 4px rgba(0,0,0,.4);
}
.btn2{
    margin-top: 2em;
    padding: 0.5em;
    background-color: white;
    text-decoration: none;
    color: black;
    border-radius: 1em ;
    box-shadow: 1px 2px 4px rgba(0,0,0,.4);
    transition: 0.3s;
}
.btn2:hover {
    background-color: #12121222;
    color: black;
    text-decoration: none;
}
</style>