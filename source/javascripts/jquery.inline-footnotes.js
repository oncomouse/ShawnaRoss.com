//var magicMaxWidth = 1155;

function addCSSRule(sheet, selector, rules, index) {
	if (index < 0) {
		index = sheet.rules.length;
	}
	if("insertRule" in sheet) {
	
		sheet.insertRule(selector + "{" + rules + "}", index);
	}
	else if("addRule" in sheet) {
		sheet.addRule(selector, rules, index);
	}
}

$(document).ready(function() {
	var $stylesheet = (function() {
		// Create the <style> tag
		var style = document.createElement("style");

		// Add a media (and/or media query) here if you'd like!
		// style.setAttribute("media", "screen")
		// style.setAttribute("media", "only screen and (max-width : 1024px)")

		// WebKit hack :(
		style.appendChild(document.createTextNode(""));
		document.head.appendChild(style);

		return style.sheet;
	})();

	$('sup[id^="fnref:"]').each(function() {
		var $this = $(this);

		$this.parent().css('position', 'relative');

		var footnoteNumber = $this.attr('id').replace(/fnref\:/,"");

		var $footnote = $('#fn\\:' + footnoteNumber);
		var $newFootnote = $('<span class="inline-footnote closed" id="fnote_'+footnoteNumber+'">' + $footnote.html() + '</span>');

		$newFootnote.find('p:first-child').html('<sup>' + footnoteNumber + '</sup>' + $newFootnote.find('p:first-child').html());

		$this.after($newFootnote);

		var $footnoteLink = $this.find('a');
		$footnoteLink.attr('href','#');
	
		$footnoteLink.click(function(e) {
			e.preventDefault();
			var footnoteNumber = $(this).parent().attr('id').replace(/fnref\:/,"");
			$('#fnote_' + footnoteNumber).toggleClass('closed opened');
			return false;
		});
	});

	$(window).resize(function() {
		$('sup[id^="fnref:"]').each(function() { 
			var $this = $(this);
			var footnoteNumber = $this.attr('id').replace(/fnref\:/,"");
			addCSSRule($stylesheet, '#fnote_'+footnoteNumber+':before, #fnote_'+footnoteNumber+':after', 'left: ' + ($this.offset().left - $this.parent().offset().left) + 'px !important;', -1);	
		});
		//if($(window).width() > magicMaxWidth) {
			//var footnotes = $('span[id^="fnote"]');
			//console.log(footnotes.overlaps());
			/*footnotes.overlaps().each(function(i) {
				if(i % 2 == 0) {
					$(this).addClass('even');
				} else {
					$(this).addClass('odd');
				}
			});*
			/*for(var i=1; i < footnotes.length; i++) {
				
			}*/
		//}
	}).resize();
});