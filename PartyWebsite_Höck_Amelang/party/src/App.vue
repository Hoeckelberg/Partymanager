<template>
<div>
  <div class="content-container">
    <div class="header">
        <div class="menue ">
            <div class="icon" v-on:click="click">
                <div class="icon__element"></div>
                <div class="icon__element"></div>
                <div class="icon__element"></div>
            </div>
            <ul class="sidebar is-active">
              <div class="flex">
                <a class="sidebar__item" href="#section" >HOME</a> 
                <a class="sidebar__item" href="#section2">CREATE</a> 
                <a class="sidebar__item" href="#section3">ABOUT</a> 
                <a class="sidebar__item" href="#section4">IMPRESSUM</a>
                <a class="sidebar__item 2" v-on:click="click"> <i class="fas fa-arrow-left"></i> </a> 
              </div>
                
            </ul>
        </div>
    <h1 class="head">BKTM PartyService</h1>
    <!--<img>-->
    <h3>by Moritz, Marvin</h3>
  </div>
  <div class="main-content">
    <div class="PartyService" id="section app">
      <PartyService/>
    </div>
  </div>
  </div>
  <div class="lower-content-container">
    <section style="margin-bottom:10em padding-bottom: 5em; z-index:-1;" id="section2" >
      <PartyCreate/>
    </section>
    <section style="max-width: 100%" id="section3">
      <PartyHistory/>
    </section>
    <section class="footer" style="max-width: 100%" id="section4">
      <Footer/>
    </section>
  </div>
</div>
</template>
<script>
import PartyCreate from './components/PartyCreate.vue'
import PartyService from './components/PartyService'
import PartyHistory from './components/PartyHistory'
import Footer from './components/Footer'

export default {
  name: 'App',
  components: {
    PartyService,
    PartyCreate,
    PartyHistory,
    Footer,
  },
  methods: {
    click: function () {
      const bar = document.getElementsByClassName('sidebar');
      const bar2 = document.getElementsByClassName('2');
      bar[0].classList.toggle('is-active');
      bar2[0].classList.toggle('is-active');
    }
  }
}

</script>

<style>
body{
  margin: 0;
  width: 100%;
}
#app {
  font-family: Avenir, Helvetica, Arial, ;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
.footer {
  background-color: #37474f;
  color: whitesmoke;
}

.content-container{
  display: flex;
  flex-direction: column;
  max-width: 100%;
  margin: 0 auto;
  background-image: url("https://www.wallpapertip.com/wmimgs/71-713207_concert-wallpapers-party-wallpaper-hd.jpg");
  background-position: center;
  background-attachment: fixed;
  background-size: cover;
  height: 57em;
  bottom: 0;
}

.header {
  display: flex;
  flex-direction: row;
  margin: 0 auto;
  text-align: center;
  margin:2em auto 2em auto;
  padding: 1em;
  color: white;
  opacity: 1;
  
}

.head {
    font-size: 3em;
    font-weight: bold;
    font-family: 'Shadows Into Light', cursive;
    text-shadow: 1px 1px 1px #121212,
                1px 2px 1px #121212,
                1px 3px 1px #121212,
                1px 4px 1px #121212,
                1px 5px 1px #121212,
                1px 6px 1px #121212,
                1px 7px 1px #121212,
                1px 8px 1px #121212,
                1px 9px 1px #121212,
                1px 10px 1px #121212,
                1px 18px 6px rgba(16,16,16,0.4),
                1px 22px 10px rgba(16,16,16,0.2),
                1px 25px 35px rgba(16,16,16,0.2),
                1px 30px 60px rgba(16,16,16,0.4);
}
.head2 {
    font-size: 3em;
    font-weight: bold;
}

.main-content {
  margin: 0 auto;
  text-align: center;
  border-radius: 0.8em;
  padding: 2em;
  max-width: 70%;
  background: white;
  font-family: 'Montserrat', sans-serif;
  bottom: 0;
}
.PartyService {
  margin: 0 auto;
  max-height: 25em;
  overflow: scroll;
  scrollbar-width: none;
  -webkit-scrollbar-width: none;
}

::-webkit-scrollbar {
  width: 0;  
  background: transparent;  
}

::-webkit-scrollbar-thumb {
  background: gray;
}

.lower-content-container{
  margin: 0 auto;
  text-align: center;
  top: 0;
  background-color: #2b3b3b;
  padding-top: 2em;
  height: 50em;
}

.sidebar {
  margin: 0 auto;
  height: 100%; 
  width: 160px; 
  position: fixed;
  top: 0;
  left: 0;
  background-color: #111; 
  overflow-x: hidden; 
  padding-top: 8em;

  padding-left: 0em;
  transition: 0.3s;
  opacity: 0;
    
}
.sidebar.is-active { 
  opacity: 0.6;  
}
.sidebar__item {
  list-style: none;
  margin: 0 auto;
  font-size: 1.1em;
  color: white;
  transition: 0.2s;
}
.sidebar__item:hover {
  color: gray;
  text-decoration: none;
  transform: scale(1.1);
  text-shadow: 1px 1px 1px #000, 
                3px 3px 5px black;
  cursor: pointer;
}

.flex {
  display: flex;
  flex-direction: column;
}
.main-content {
  margin: 0 auto;
  max-width: 50%;
}
.icon {
  margin-right: 2em;
  position: sticky;
  z-index: 1;
  height: 28px;
  width: 30px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.icon:hover {
  transform: scale(1.1);
}
.icon__element {
    
  background-color: white;
  border-radius: 0.8em;
  height: 20%;
  width: 100%;
  box-shadow: 0 0.001em 0.61em -0.125em;
}

a {
  padding-top: 2em;
  color: whitesmoke;
  text-decoration: none;
}

@media screen and (max-width: 10px) {
  .lower-content-container{
    padding: 0;
  }
}

</style>
