<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>MemoLimitsWeb</title>

    <script type="text/javascript">
        var maxLines = 3;

        function ASPxMemo1_KeyDown(s, e) {
            var countLines = s.GetText().split('\n').length;

            if (e.htmlEvent.keyCode == 13 && countLines >= maxLines)
                ASPxClientUtils.PreventEventAndBubble(e.htmlEvent);
        }

        var maxLineLength = 10;

        function ASPxMemo2_KeyUp(s, e) {
            var text = s.GetText();
            var lines = text.split('\n');

            for (var i = 0; i < lines.length; i++) {
                if (lines[i].length <= maxLineLength) continue;
                var j = 0; space = maxLineLength;
                while (j++ <= maxLineLength) {
                    if (lines[i].charAt(j) === ' ') space = j;
                }
                lines[i + 1] = lines[i].substring(space + 1) + (lines[i + 1] || '');
                lines[i] = lines[i].substring(0, space);
            }

            s.SetText(lines.join('\n'));
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Limit the number of lines (only 3 lines are accepted):</h2>
        <dx:ASPxMemo ID="ASPxMemo1" runat="server" Columns="30" Rows="7">
            <ClientSideEvents KeyDown="ASPxMemo1_KeyDown"/>
        </dx:ASPxMemo>

        <h2>Limit the number of characters per line (only 10 characters are accepted):</h2>
        <dx:ASPxMemo ID="ASPxMemo2" runat="server" Columns="30" Rows="7">
            <ClientSideEvents KeyUp="ASPxMemo2_KeyUp"/>
        </dx:ASPxMemo>
    </form>
</body>
</html>