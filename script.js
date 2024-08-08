
const div_DC1_DMZ = document.getElementById("DC1_DMZ");
const div_DC2_DMZ = document.getElementById("DC2_DMZ");
const div_DC1_INT = document.getElementById("DC1_INT");
const div_DC2_INT = document.getElementById("DC2_INT");
const div_DC1_SIA = document.getElementById("DC1_SIA");
const div_DC2_SIA = document.getElementById("DC2_SIA");

const txt_DC1_DMZ = document.getElementById("txt_DC1_DMZ");
const txt_DC2_DMZ = document.getElementById("txt_DC2_DMZ");
const txt_DC1_INT = document.getElementById("txt_DC1_INT");
const txt_DC2_INT = document.getElementById("txt_DC2_INT");
const txt_DC1_SIA = document.getElementById("txt_DC1_SIA");
const txt_DC2_SIA = document.getElementById("txt_DC2_SIA");

txt_DC1_DMZ.addEventListener('mouseover', function(){
    console.log('mouseover txt_DC1_DMZ'); div_DC1_DMZ.style.borderColor="#51E0FF";})
txt_DC1_DMZ.addEventListener('mouseleave', function(){
    console.log('mouseleave txt_DC1_DMZ'); div_DC1_DMZ.style.borderColor="#FFC700";})
txt_DC2_DMZ.addEventListener('mouseover', function(){
    console.log('mouseover txt_DC2_DMZ'); div_DC2_DMZ.style.borderColor="#51E0FF";})
txt_DC2_DMZ.addEventListener('mouseleave', function(){
    console.log('mouseleave txt_DC2_DMZ'); div_DC2_DMZ.style.borderColor="#FFC700";})

txt_DC1_INT.addEventListener('mouseover', function(){
    console.log('mouseover txt_DC1_INT'); div_DC1_INT.style.borderColor="#51E0FF";})
txt_DC1_INT.addEventListener('mouseleave', function(){
    console.log('mouseleave txt_DC1_INT'); div_DC1_INT.style.borderColor="#FFC700";})
txt_DC2_INT.addEventListener('mouseover', function(){
    console.log('mouseover txt_DC2_INT'); div_DC2_INT.style.borderColor="#51E0FF";})
txt_DC2_INT.addEventListener('mouseleave', function(){
    console.log('mouseleave txt_DC2_INT'); div_DC2_INT.style.borderColor="#FFC700";})

txt_DC1_SIA.addEventListener('mouseover', function(){
    console.log('mouseover txt_DC1_SIA'); div_DC1_SIA.style.borderColor="#51E0FF";})
txt_DC1_SIA.addEventListener('mouseleave', function(){
    console.log('mouseleave txt_DC1_SIA'); div_DC1_SIA.style.borderColor="#FFC700";})
txt_DC2_SIA.addEventListener('mouseover', function(){
    console.log('mouseover txt_DC2_SIA'); div_DC2_SIA.style.borderColor="#51E0FF";})
txt_DC2_SIA.addEventListener('mouseleave', function(){
    console.log('mouseleave txt_DC2_SIA'); div_DC2_SIA.style.borderColor="#FFC700";})

// ******************************************************************* //

const openDC1_DMZ = document.querySelector(".DC1_DMZ p");
const closDC1_DMZ = document.querySelector(".modal_DC1_DMZ button");
const modalDC1_DMZ = document.querySelector(".modal_DC1_DMZ");
const openDC2_DMZ = document.querySelector(".DC2_DMZ p");
const closDC2_DMZ = document.querySelector(".modal_DC2_DMZ button");
const modalDC2_DMZ = document.querySelector(".modal_DC2_DMZ");

openDC1_DMZ.addEventListener("click", () => {modalDC1_DMZ.showModal()})
closDC1_DMZ.addEventListener("click", () => {modalDC1_DMZ.close()})
openDC2_DMZ.addEventListener("click", () => {modalDC2_DMZ.showModal()})
closDC2_DMZ.addEventListener("click", () => {modalDC2_DMZ.close()})


const openDC1_INT = document.querySelector(".DC1_INT p");
const closDC1_INT = document.querySelector(".modal_DC1_INT button");
const modalDC1_INT = document.querySelector(".modal_DC1_INT");
const openDC2_INT = document.querySelector(".DC2_INT p");
const closDC2_INT = document.querySelector(".modal_DC2_INT button");
const modalDC2_INT = document.querySelector(".modal_DC2_INT");

openDC1_INT.addEventListener("click", () => {modalDC1_INT.showModal()})
closDC1_INT.addEventListener("click", () => {modalDC1_INT.close()})
openDC2_INT.addEventListener("click", () => {modalDC2_INT.showModal()})
closDC2_INT.addEventListener("click", () => {modalDC2_INT.close()})


const openDC1_SIA = document.querySelector(".DC1_SIA p");
const closDC1_SIA = document.querySelector(".modal_DC1_SIA button");
const modalDC1_SIA = document.querySelector(".modal_DC1_SIA");
const openDC2_SIA = document.querySelector(".DC2_SIA p");
const closDC2_SIA = document.querySelector(".modal_DC2_SIA button");
const modalDC2_SIA = document.querySelector(".modal_DC2_SIA");

openDC1_SIA.addEventListener("click", () => {modalDC1_SIA.showModal()})
closDC1_SIA.addEventListener("click", () => {modalDC1_SIA.close()})
openDC2_SIA.addEventListener("click", () => {modalDC2_SIA.showModal()})
closDC2_SIA.addEventListener("click", () => {modalDC2_SIA.close()})
