<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128531023/15.1.10%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T359681)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
<!-- default file list end -->
# ASPxMemo - How to limit the number of lines and the number of characters per line
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t359681/)**
<!-- run online end -->


While there is no built-in methods to limit text input in this manner, you can use JavaScript-based solutions because our <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxMemotopic">ASPxMemo</a> control renders the regular <a href="http://www.w3schools.com/tags/tag_textarea.asp">HTML textarea element</a>. So any solution applicable to this HTML element is also applicable to the ASPxMemo control. For example:<br><br><a href="http://stackoverflow.com/questions/6501043/limit-number-of-lines-in-textarea-and-display-line-count-using-jquery">javascript - Limit number of lines in textarea and Display line count using jQuery - Stack Overflow</a> <br><a href="http://stackoverflow.com/questions/14259580/textarea-with-limited-lines-and-char-limits">javascript - textarea with limited lines and char limits - Stack Overflow</a> <br><br>The attached solution illustrates how to apply this logic to the ASPxMemo control.<br><br><strong>See Also:</strong><br><a href="https://www.devexpress.com/Support/Center/p/E4334">E4334 - How to set the text max length in the ASPxMemo control</a> <br><a href="https://www.devexpress.com/Support/Center/p/E1424">E1424 - How to implement the "characters remaining" functionality for ASPxTextBox and ASPxMemo using MaxLength</a>

<br/>


