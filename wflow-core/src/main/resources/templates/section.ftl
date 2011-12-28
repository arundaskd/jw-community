<div id="${elementParamName!}" class="form-section section_${element.properties.elementUniqueKey!}" ${elementMetaData!} <#if visibilityControlParam?? && includeMetaData == false>style="display: none"</#if>>
    <div class="form-section-title"><#if element.properties.label?? && element.properties.label != ""><span>${element.properties.label!}</span></#if></div>
    <#list element.children as e>
        ${e.render(formData, includeMetaData!false)}
    </#list>
    
<#if visibilityControlParam?? && includeMetaData == false>
<script type="text/javascript" src="${request.contextPath}/plugin/org.joget.apps.form.model.Section/js/section.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        new VisibilityMonitor($('.section_${element.properties.elementUniqueKey!}'), "${visibilityControlParam!}", "${element.properties.visibilityValue!}", "${element.properties.regex!}").init();
    });
</script>
</#if>

</div>
