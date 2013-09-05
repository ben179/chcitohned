
<div id="itemContainer">
  <g:each status="i" var="item" in="${foundItems}">
    <g:if test="${item.location}">
      <script type="text/javascript">
        addMarkers([{latitude:"${item.location.latitude}", longitude : "${item.location.longitude}", title : "${item.name}"}]);
      </script>   
    </g:if>
  </g:each>
</div>
