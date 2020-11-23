		</body>
		<footer class="page-footer font-small blue">
			<div class="footer-copyright text-center py-3">© 2020 Copyright:
				<a id = "footlink" href=""> usale.com</a>
			</div>
		</footer>
		
		<script>
			let t = document.querySelectorAll(".list");
			for(let i=0;i<t.length;i++){
				t[i].onclick = function(){
					if(this.nextElementSibling.classList.contains("hide")){
						this.nextElementSibling.classList.remove("hide");
					}
					else{
						this.nextElementSibling.classList.add("hide");
					}
				}
			}
		</script>
	</body>
</html>