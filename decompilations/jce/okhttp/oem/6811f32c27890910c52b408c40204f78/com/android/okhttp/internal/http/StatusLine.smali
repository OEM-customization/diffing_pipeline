.class public final Lcom/android/okhttp/internal/http/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# static fields
.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_PERM_REDIRECT:I = 0x134

.field public static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;

.field public final protocol:Lcom/android/okhttp/Protocol;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V
    .registers 4
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    .line 21
    iput p2, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 22
    iput-object p3, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;
    .registers 5
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 26
    new-instance v0, Lcom/android/okhttp/internal/http/StatusLine;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;
    .registers 10
    .param p0, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    .line 36
    const-string/jumbo v6, "HTTP/1."

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1b

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_35

    .line 38
    :cond_1b
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 40
    :cond_35
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v3, v6, -0x30

    .line 41
    .local v3, "httpMinorVersion":I
    const/16 v1, 0x9

    .line 42
    .local v1, "codeStart":I
    if-nez v3, :cond_64

    .line 43
    sget-object v5, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    .line 58
    .end local v3    # "httpMinorVersion":I
    .local v5, "protocol":Lcom/android/okhttp/Protocol;
    :goto_42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v1, 0x3

    if-ge v6, v7, :cond_ab

    .line 59
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 44
    .end local v5    # "protocol":Lcom/android/okhttp/Protocol;
    .restart local v3    # "httpMinorVersion":I
    :cond_64
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6a

    .line 45
    sget-object v5, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    .restart local v5    # "protocol":Lcom/android/okhttp/Protocol;
    goto :goto_42

    .line 47
    .end local v5    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_6a
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 49
    .end local v1    # "codeStart":I
    .end local v3    # "httpMinorVersion":I
    :cond_84
    const-string/jumbo v6, "ICY "

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 51
    sget-object v5, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    .line 52
    .restart local v5    # "protocol":Lcom/android/okhttp/Protocol;
    const/4 v1, 0x4

    .restart local v1    # "codeStart":I
    goto :goto_42

    .line 54
    .end local v1    # "codeStart":I
    .end local v5    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_91
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    .restart local v1    # "codeStart":I
    .restart local v5    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_ab
    add-int/lit8 v6, v1, 0x3

    :try_start_ad
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b4} :catch_e2

    move-result v0

    .line 70
    .local v0, "code":I
    const-string/jumbo v4, ""

    .line 71
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v1, 0x3

    if-le v6, v7, :cond_103

    .line 72
    add-int/lit8 v6, v1, 0x3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_fd

    .line 73
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 64
    .end local v0    # "code":I
    .end local v4    # "message":Ljava/lang/String;
    :catch_e2
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 75
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "code":I
    .restart local v4    # "message":Ljava/lang/String;
    :cond_fd
    add-int/lit8 v6, v1, 0x4

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    :cond_103
    new-instance v6, Lcom/android/okhttp/internal/http/StatusLine;

    invoke-direct {v6, v5, v0, v4}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    if-ne v1, v2, :cond_2e

    const-string/jumbo v1, "HTTP/1.0"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 83
    :cond_2e
    const-string/jumbo v1, "HTTP/1.1"

    goto :goto_10
.end method
