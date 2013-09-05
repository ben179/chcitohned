<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<style type="text/css" media="screen">
  .itemDiv {
    /*background-color: #eee;*/
    border: .1em solid #fff;
    margin: 5px 5px 5px;
    padding: 5px;
    float: left;
    -moz-box-shadow: 0px 0px 1em #ccc;
    -webkit-box-shadow: 0px 0px 1em #ccc;
    box-shadow: 0px 0px 1em #ccc;
    -moz-border-radius: 0.3em;
    -webkit-border-radius: 0.3em;
    border-radius: 0.3em;
  }

  .ui-tooltip, .arrow:after {
    background: black;
    border: 2px solid white;
  }
  .ui-tooltip {
    padding: 1px 1px;
    color: white;
    border-radius: 3px;
    /*font: bold 9px "Helvetica Neue", Sans-Serif;*/
     font-size: 1px;
    text-transform: uppercase;
    box-shadow: 0 0 4px black;
  }
  .arrow {
    width: 70px;
    height: 16px;
    overflow: hidden;
    position: absolute;
    left: 50%;
    margin-left: -35px;
    bottom: -16px;
  }
  .arrow.top {
    top: -16px;
    bottom: auto;
  }
  .arrow.left {
    left: 20%;
  }
  .arrow:after {
    content: "";
    position: absolute;
    left: 20px;
    top: -20px;
    width: 25px;
    height: 25px;
    box-shadow: 6px 5px 9px -9px black;
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    tranform: rotate(45deg);
  }
  .arrow.top:after {
    bottom: -20px;
    top: auto;
  }
  /*#itemContainer {
    background-color: #eee;
    border: .2em solid #fff;
    margin: 2em 2em 1em;
    padding: 1em;
    width: 90%;
    height: 100px;
  
    -moz-box-shadow: 0px 0px 1.25em #ccc;
    -webkit-box-shadow: 0px 0px 1.25em #ccc;
    box-shadow: 0px 0px 1.25em #ccc;
    -moz-border-radius: 0.6em;
    -webkit-border-radius: 0.6em;
    border-radius: 0.6em;
  }*/
</style>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script>
$(function() {
$( document ).tooltip({
  position: {
      my: "center bottom-10",
      at: "center top",
      using: function( position, feedback ) {
          $( this ).css( position );
          $( "<div>" )
              .addClass( "arrow" )
              .addClass( feedback.vertical )
              .addClass( feedback.horizontal )
              .appendTo( this );
      }
  }
});
});
</script>

<div id="itemContainer"  style="display:table;float:left; width:${(foundItems ? foundItems.size() * 130 : 0 )}px; margin: auto; margin-left:-${(foundItems ? foundItems.size() * 130 : 0 ) / 8 }px" >


  <g:each status="i" var="item" in="${foundItems}">
    <g:if test="${i % 3 == 0}">
      <div style="display:table-row">
    </g:if>
    <div class="itemDiv" title="${item.description}" style="display:table-cell;width:150px; margin: 15 auto; text-align: center; ">
${item.name} 
    </div>
    <g:if test="${i % 3 == 2}">
      </div>
    </g:if>
  </g:each>


</div>
