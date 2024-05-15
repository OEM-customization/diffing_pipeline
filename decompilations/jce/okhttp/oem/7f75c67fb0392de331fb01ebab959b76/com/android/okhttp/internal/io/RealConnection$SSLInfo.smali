.class public Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
.super Ljava/lang/Object;
.source "RealConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/io/RealConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSLInfo"
.end annotation


# instance fields
.field public blacklist connectTimeout:I

.field public blacklist connectionRetryEnable:Z

.field public blacklist connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist isSSL:Z

.field public blacklist readTimeout:I

.field public final blacklist route:Lcom/android/okhttp/Route;

.field public blacklist tunnel:Lcom/android/okhttp/Request;

.field public blacklist writeTimeout:I


# direct methods
.method public constructor blacklist <init>(ZLcom/android/okhttp/Route;Lcom/android/okhttp/Request;IIILjava/util/List;Z)V
    .registers 9
    .param p1, "isS"    # Z
    .param p2, "r"    # Lcom/android/okhttp/Route;
    .param p3, "t"    # Lcom/android/okhttp/Request;
    .param p4, "connectT"    # I
    .param p5, "readT"    # I
    .param p6, "writeT"    # I
    .param p8, "connectionR"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/okhttp/Route;",
            "Lcom/android/okhttp/Request;",
            "III",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .line 148
    .local p7, "connectionS":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean p1, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->isSSL:Z

    .line 150
    iput-object p2, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->route:Lcom/android/okhttp/Route;

    .line 151
    iput-object p3, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->tunnel:Lcom/android/okhttp/Request;

    .line 152
    iput p4, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectTimeout:I

    .line 153
    iput p5, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->readTimeout:I

    .line 154
    iput p6, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->writeTimeout:I

    .line 155
    iput-object p7, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionSpecs:Ljava/util/List;

    .line 156
    iput-boolean p8, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionRetryEnable:Z

    .line 157
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 161
    const-string v0, ","

    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-boolean v2, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->isSSL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->route:Lcom/android/okhttp/Route;

    if-nez v2, :cond_16

    const-string v2, "null"

    goto :goto_1c

    :cond_16
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->tunnel:Lcom/android/okhttp/Request;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 165
    iget v0, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectTimeout:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    iget v0, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->readTimeout:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 167
    iget v0, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->writeTimeout:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 168
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 169
    iget-boolean v0, p0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionRetryEnable:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_2 .. :try_end_44} :catchall_45

    return-object v0

    .line 172
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :catchall_45
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
