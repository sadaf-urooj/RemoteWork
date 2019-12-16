import { Controller } from "stimulus"

export default class extends Controller {
    static targets = [ "image" ]

    connect() {

        console.log('abc')
        console.log(this.imageTarget)
    }

   preview(e){
        console.log('preview')
       if (e.target.files && e.target.files[0]){
           var reader = new FileReader();
           reader.onload = (e) => {
               this.imageTarget.setAttribute('src', e.target.result);

        };

        reader.readAsDataURL(e.target.files[0]);
       }

   }

}





// function readURL(input) {
//     if (input.files && input.files[0]) {
//         var reader = new FileReader();
//
//         reader.onload = function (e) {
//             $('#blah')
//                 .attr('src', e.target.result);
//         };
//
//         reader.readAsDataURL(input.files[0]);
//     }
// }