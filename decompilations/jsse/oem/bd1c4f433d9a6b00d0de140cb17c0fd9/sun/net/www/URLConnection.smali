.class public abstract Lsun/net/www/URLConnection;
.super Ljava/net/URLConnection;
.source "URLConnection.java"


# static fields
.field private static proxiedHosts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field protected properties:Lsun/net/www/MessageHeader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/URLConnection;->contentLength:I

    .line 53
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    .line 54
    return-void
.end method

.method public static declared-synchronized isProxiedHost(Ljava/lang/String;)Z
    .registers 4
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const-class v1, Lsun/net/www/URLConnection;

    monitor-enter v1

    .line 244
    :try_start_3
    sget-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setProxiedHost(Ljava/lang/String;)V
    .registers 5
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const-class v1, Lsun/net/www/URLConnection;

    monitor-enter v1

    .line 240
    :try_start_3
    sget-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    .line 241
    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-boolean v0, p0, Lsun/net/www/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_d
    if-nez p1, :cond_18

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_18
    return-void
.end method

.method public canCache()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lsun/net/www/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/URLConnection;->url:Ljava/net/URL;

    .line 235
    return-void
.end method

.method public getContentLength()I
    .registers 5

    .prologue
    .line 198
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_18

    .line 202
    iget v1, p0, Lsun/net/www/URLConnection;->contentLength:I

    .line 203
    .local v1, "l":I
    if-gez v1, :cond_17

    .line 205
    :try_start_7
    iget-object v2, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "content-length"

    invoke-virtual {v2, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 206
    invoke-virtual {p0, v1}, Lsun/net/www/URLConnection;->setContentLength(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_1b

    .line 210
    :cond_17
    :goto_17
    return v1

    .line 199
    .end local v1    # "l":I
    :catch_18
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    return v2

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "l":I
    :catch_1b
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_17
.end method

.method public getContentType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 143
    iget-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 144
    const-string/jumbo v3, "content-type"

    invoke-virtual {p0, v3}, Lsun/net/www/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    .line 145
    :cond_d
    iget-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    if-nez v3, :cond_69

    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "ct":Ljava/lang/String;
    :try_start_12
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_79

    move-result-object v1

    .line 151
    .end local v1    # "ct":Ljava/lang/String;
    :goto_1a
    iget-object v3, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v4, "content-encoding"

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "ce":Ljava/lang/String;
    if-nez v1, :cond_42

    .line 153
    iget-object v3, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v4, "content-type"

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "ct":Ljava/lang/String;
    if-nez v1, :cond_42

    .line 156
    iget-object v3, p0, Lsun/net/www/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 157
    const-string/jumbo v1, "text/html"

    .line 171
    .end local v1    # "ct":Ljava/lang/String;
    :cond_42
    :goto_42
    if-eqz v1, :cond_63

    if-eqz v0, :cond_66

    .line 172
    const-string/jumbo v3, "7bit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 173
    const-string/jumbo v3, "8bit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 172
    if-nez v3, :cond_77

    .line 174
    const-string/jumbo v3, "binary"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 172
    :goto_5f
    xor-int/lit8 v3, v3, 0x1

    .line 171
    if-eqz v3, :cond_66

    .line 175
    :cond_63
    const-string/jumbo v1, "content/unknown"

    .line 176
    :cond_66
    invoke-virtual {p0, v1}, Lsun/net/www/URLConnection;->setContentType(Ljava/lang/String;)V

    .line 178
    .end local v0    # "ce":Ljava/lang/String;
    :cond_69
    iget-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    return-object v3

    .line 159
    .restart local v0    # "ce":Ljava/lang/String;
    .restart local v1    # "ct":Ljava/lang/String;
    :cond_6c
    iget-object v3, p0, Lsun/net/www/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    .line 172
    .end local v1    # "ct":Ljava/lang/String;
    :cond_77
    const/4 v3, 0x1

    goto :goto_5f

    .line 149
    .end local v0    # "ce":Ljava/lang/String;
    .local v1, "ct":Ljava/lang/String;
    :catch_79
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_1a
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 5
    .param p1, "n"    # I

    .prologue
    const/4 v2, 0x0

    .line 131
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_9

    .line 135
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    .line 136
    .local v1, "props":Lsun/net/www/MessageHeader;
    if-nez v1, :cond_b

    :goto_8
    return-object v2

    .line 132
    .end local v1    # "props":Lsun/net/www/MessageHeader;
    :catch_9
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    return-object v2

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "props":Lsun/net/www/MessageHeader;
    :cond_b
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 102
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_9

    .line 106
    iget-object v2, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    if-nez v2, :cond_b

    :goto_8
    return-object v1

    .line 103
    :catch_9
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    return-object v1

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 5
    .param p1, "n"    # I

    .prologue
    const/4 v2, 0x0

    .line 116
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_9

    .line 120
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    .line 121
    .local v1, "props":Lsun/net/www/MessageHeader;
    if-nez v1, :cond_b

    :goto_8
    return-object v2

    .line 117
    .end local v1    # "props":Lsun/net/www/MessageHeader;
    :catch_9
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    return-object v2

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "props":Lsun/net/www/MessageHeader;
    :cond_b
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public getProperties()Lsun/net/www/MessageHeader;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-boolean v0, p0, Lsun/net/www/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-boolean v0, p0, Lsun/net/www/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setContentLength(I)V
    .registers 5
    .param p1, "length"    # I

    .prologue
    .line 217
    iput p1, p0, Lsun/net/www/URLConnection;->contentLength:I

    .line 218
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v1, "content-length"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string/jumbo v1, "content-type"

    invoke-virtual {v0, v1, p1}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setProperties(Lsun/net/www/MessageHeader;)V
    .registers 2
    .param p1, "properties"    # Lsun/net/www/MessageHeader;

    .prologue
    .line 65
    iput-object p1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    .line 66
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-boolean v0, p0, Lsun/net/www/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 70
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_d
    if-nez p1, :cond_18

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_18
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
