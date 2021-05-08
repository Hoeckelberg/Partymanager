<template>
  <div class="modal-backdrop">
    <div class="modal">
      <header class="modal-header">
        <slot name="header">
          <h2>Remove Party</h2>
        </slot>
        <button
          type="button"
          class="btn-close"
          @click="close"
        >
          x
        </button>
      </header>
      <section class="modal-body">
        <slot name="body">
          Passwort Bestätigen!
          <div>
            <br>
            <input v-model="passwd" id="pwd" type="password" placeholder="Password" class="textbox"><br>
            <br>
            <button @click="passwordCheck">Submit</button>
          </div>
        </slot>
       </section>

      <footer class="modal-footer">
        <slot name="footer">
          This is the default footer!
        </slot>
        <button
          type="button"
          class="btn-green"
          @click="close"
        >
          Close Modal
        </button>
      </footer>
    </div>
  </div>
</template>


<script>
export default {
    name: 'Modal',
    props: {
      passwd: Number,

    },
    data() {
      return {
        x:null
      }
    },
    methods: {
      close() {
          this.$emit('close');
      },
      passwordCheck() {
        if (this.passwd == 123) {
          this.$root.$refs.A = this;
          this.$emit('close');
          this.x == true;
          return this.x;
        }
        else{
          alert('Wrong Password!')
          this.$root.$refs.A = this
          this.x == false;
          return this.x;
        }
      },
    },
};
</script>

<style>
  .modal-backdrop {
    background-color: rgba(0, 0, 0, 0.3);
  }

  .modal {
    background: #FFFFFF;
    box-shadow: 2px 2px 20px 1px;
    overflow-x: auto;
    width: 300px;
    height: 300px;
    display: flex;
    flex-direction: column;
    position: fixed;
    left: 50%;
    top: 50%; 
    margin-left: -150px;
    margin-top: -150px;
  }

  .modal-header,
  .modal-footer {
    padding: 10px;
    display: flex;
    font-size: 0.5em;
  }

  .modal-header {
    position: relative;
    border-bottom: 1px solid #eeeeee;
    color: #4AAE9B;
    justify-content: space-between;
  }

  .modal-footer {
    border-top: 1px solid #eeeeee;
    flex-direction: column;
    justify-content: flex-end;
  }

  .modal-body {
    position: relative;
    padding: 20px 10px;
  }

  .btn-close {
    position: absolute;
    top: 0;
    right: 0;
    border: none;
    font-size: 20px;
    padding: 10px;
    cursor: pointer;
    font-weight: bold;
    color: #4AAE9B;
    background: transparent;
  }

  .btn-green {
    color: white;
    background: #4AAE9B;
    border: 1px solid #4AAE9B;
    border-radius: 2px;
  }
  #pwd {
    color: black !important;
    text-align: center;
    border-radius: 1px;
    border-color: black;
  }
</style>
