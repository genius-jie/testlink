{lang_get s='help' var='img_alt'}
{assign var="img_style" value=$inc_help_style|default:"vertical-align: top;"}
{* get localized text and remove harm characters *}
{lang_get var="help_text_raw" s=$helptopic}
{assign var="help_text" 
        value=$help_text_raw|regex_replace:"/[\r\t\n]/":" "|replace:"'":"&#39;"|replace:"\"":"&quot;"|default:"Help: Localization/Text is missing."}

<script type="text/javascript">

	var help_localized_text5 = "<img style='float: right' " +
		"src='{$smarty.const.TL_THEME_IMG_DIR}/x-icon.gif' " +
		"onclick='javascript: close_help();' /> {$help_text|escape:'javascript'}";

</script>  
{if $show_help_icon !== false}
<img alt="{$img_alt}" style="{$img_style}" 
	src="{$smarty.const.TL_THEME_IMG_DIR}/sym_question.gif" 
	onclick='javascript: show_help(help_localized_text5);'
/>
{/if}
