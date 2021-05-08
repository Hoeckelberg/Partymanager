<template>
        <tr scope="row" class="itemlist">
            <td>{{ ID }}</td>
            <td>{{ Name }}</td>
            <td>{{ Ort }}</td>
            <td>{{ Anzahl_Leute }}</td>
            <td>{{Zeitpunkt.toLocaleDateString()}} {{Zeitpunkt.toLocaleTimeString()}}</td>
            <td> <button @click="showModal(); RmItem();" @close="closeModal" class="btn-del btn fas fa-trash"></button> </td>
            <div id="app">
            <Modal
            v-show="isModalVisible"
            @close="closeModal"
            />
            </div>
        </tr>
</template>

<script>

import axios from 'axios'
import Modal from './Modal'

export default {
    name: "PartyserviceItem",
    components: {
        Modal
    },
    data() {
    return {
      isModalVisible: false,
        }
    },
    props: {
        ID: Number,
        Name: String,
        Ort: String,
        Anzahl_Leute: Number,
        Zeitpunkt: Date,
        Passwd: String,
    },
    methods: {
        RmItem() {
            if(this.ID != null & this.isModalVisible == false){
                axios.delete("http://localhost:8081/api/party/" + this.ID).then(() => {
                    this.$emit("deleteSuccess")
                })
            }
        },
        showModal() {
        this.isModalVisible = true;
        },
        closeModal() {
        this.isModalVisible = false;
        if (this.$root.$refs.A) {
            this.RmItem();
        }
        }
    }
}
</script>

<style>


.btn-del {
    max-width: 150px;
    max-height: 50px;
    font-size: 16px;  
    color: #ff4040 ;
    margin: 0 auto;
    display: block;
    padding: 0.5em 1em;
    background: white;
    color: inherit;
    position: relative;
    z-index: 1;
    letter-spacing: 2px;
    text-transform: uppercase;
    font-weight: 600;
    border: 1px solid #ff4040;
    border-radius: 50%;
    margin-top: 0!important;
    transition: 0.2s;
    text-align: center !important;

}
.btn {
    background-color: white !important;
}
.btn:hover {
    transform: scale(1.1)
}
.btn:focus {
    outline: none;
    color: white;
}

.button--wayrae {
    overflow: hidden;
    width: 235px;
    -webkit-transition: border-color 0.3s, color 0.3s;
    transition: border-color 0.3s, color 0.3s;
    -webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
    transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}
.button--wayrae::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 150%;
    height: 100%;
    background: white;
    z-index: -1;
    -webkit-transform: rotate3d(0, 0, 1, -45deg) translate3d(0, -3em, 0);
    transform: rotate3d(0, 0, 1, -45deg) translate3d(0, -3em, 0);
    -webkit-transform-origin: 0% 100%;
    transform-origin: 0% 100%;
    -webkit-transition: -webkit-transform 0.3s, opacity 0.3s, background-color 0.3s;
    transition: transform 0.3s, opacity 0.3s, background-color 0.3s;
}
.button--wayrae:hover {
    color: #fff;
    border-color: #ff4040;
    text-decoration: none;
}
.button--wayrae.button--inverted:hover {
    color: white;
    border-color: #fff;
}
.button--wayrae:hover::before {
    opacity: 1;
    background-color: #ff4040;
    -webkit-transform: rotate3d(0, 0, 1, 0deg);
    transform: rotate3d(0, 0, 1, 0deg);
    -webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
    transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}
.button--wayrae.button--inverted:hover::before {
    background-color: #fff;
}

</style>