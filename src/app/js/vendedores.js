
let ModeloVendedores = {
    url : '',
    //para guardar los datos
    datos: [],
    //hay que cargar los datos
    cargar : function (){
        fetch(this.url).then(function(respuesta){
            return respuesta.json();

        }).then((datosJson) =>{
            //función con sintaxis de flecha. Funciona igual quqe una función, pero el parametro this sí que funciona como debería
            //con function() this apunta a Window, ya que fetch está en window, pero con flecha this si es modelovendedores
            this.datos = datosJson;
        });
    }
};

let VistaSelectorVendedores = {
    selector : {},
    iniciar : function (selectId){
        this.selector = document.getElementById(selectId);
        this.selector.innerHTML = '<option value =  "0" >  Todos </option>'
    },
    representar : function (datos) {

    }
};

let ControladorVendedores = {

    modelo : ModeloVendedores,
    vista: VistaSelectorVendedores,
    iniciar : function(){
        this.modelo.cargar();
    },

    representar : function () {
        this.vista.representar(this.modelo.datos);
    }
};
