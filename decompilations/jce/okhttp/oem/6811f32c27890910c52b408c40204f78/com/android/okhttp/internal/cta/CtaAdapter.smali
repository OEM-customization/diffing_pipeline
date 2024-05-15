.class public final Lcom/android/okhttp/internal/cta/CtaAdapter;
.super Ljava/lang/Object;
.source "CtaAdapter.java"


# static fields
.field private static ctaCheckPduIsMmsAndEmailSendingPermitted:Ljava/lang/reflect/Method;

.field private static ctaCheckRequestIsMmsAndEmailSendingPermitted:Ljava/lang/reflect/Method;

.field private static ctaGetBadHttpResponse:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBadHttpResponse()Lcom/android/okhttp/Response;
    .registers 10

    .prologue
    const/4 v9, 0x0

    .line 71
    :try_start_1
    sget-object v6, Lcom/android/okhttp/internal/cta/CtaAdapter;->ctaGetBadHttpResponse:Ljava/lang/reflect/Method;

    if-nez v6, :cond_25

    .line 72
    const-string/jumbo v5, "system/framework/mediatek-cta.jar"

    .line 73
    .local v5, "jarPath":Ljava/lang/String;
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 74
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v1, "com.mediatek.cta.CtaHttp"

    .line 76
    .local v1, "className":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v1, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 78
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getBadResponse"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 77
    sput-object v6, Lcom/android/okhttp/internal/cta/CtaAdapter;->ctaGetBadHttpResponse:Ljava/lang/reflect/Method;

    .line 80
    :cond_25
    sget-object v6, Lcom/android/okhttp/internal/cta/CtaAdapter;->ctaGetBadHttpResponse:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/Response;
    :try_end_31
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_31} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    return-object v6

    .line 85
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_32
    move-exception v4

    .line 86
    .local v4, "ee":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ee:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    .end local v4    # "ee":Ljava/lang/Exception;
    :cond_4c
    return-object v9

    .line 81
    :catch_4d
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/SecurityException;

    if-eqz v6, :cond_4c

    .line 83
    new-instance v6, Ljava/lang/SecurityException;

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static isMoMMS(Lcom/android/okhttp/Request;)Z
    .registers 12
    .param p0, "request"    # Lcom/android/okhttp/Request;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 107
    const-string/jumbo v3, "application/vnd.wap.mms-message"

    .line 109
    .local v3, "mimetype":Ljava/lang/String;
    const-string/jumbo v7, "POST"

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 110
    const-string/jumbo v7, "User-Agent"

    invoke-virtual {p0, v7}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "userAgent":Ljava/lang/String;
    if-eqz v4, :cond_25

    const-string/jumbo v7, "MMS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_25

    .line 112
    return v10

    .line 114
    :cond_25
    const-string/jumbo v7, "Content-Type"

    invoke-virtual {p0, v7}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_38

    .line 116
    const-string/jumbo v7, "application/vnd.wap.mms-message"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_38

    .line 117
    return v10

    .line 120
    :cond_38
    const-string/jumbo v7, "Accept"

    invoke-virtual {p0, v7}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "acceptType":Ljava/lang/String;
    if-eqz v0, :cond_4b

    .line 122
    const-string/jumbo v7, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_4b

    .line 123
    return v10

    .line 126
    :cond_4b
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v7

    const-string/jumbo v8, "Content-Type"

    invoke-virtual {v7, v8}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 127
    .local v2, "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "value$iterator":Ljava/util/Iterator;
    :cond_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 128
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v7, "application/vnd.wap.mms-message"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_5a

    .line 129
    return v10

    .line 134
    .end local v0    # "acceptType":Ljava/lang/String;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "userAgent":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "value$iterator":Ljava/util/Iterator;
    :cond_70
    const/4 v7, 0x0

    return v7
.end method

.method public static isSendingPermitted(Lcom/android/okhttp/Request;)Z
    .registers 12
    .param p0, "request"    # Lcom/android/okhttp/Request;

    .prologue
    const/4 v10, 0x1

    .line 48
    :try_start_1
    sget-object v6, Lcom/android/okhttp/internal/cta/CtaAdapter;->ctaCheckRequestIsMmsAndEmailSendingPermitted:Ljava/lang/reflect/Method;

    if-nez v6, :cond_2a

    .line 49
    const-string/jumbo v5, "system/framework/mediatek-cta.jar"

    .line 50
    .local v5, "jarPath":Ljava/lang/String;
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 51
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v1, "com.mediatek.cta.CtaHttp"

    .line 53
    .local v1, "className":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v1, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 55
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "isMmsAndEmailSendingPermitted"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Lcom/android/okhttp/Request;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 54
    sput-object v6, Lcom/android/okhttp/internal/cta/CtaAdapter;->ctaCheckRequestIsMmsAndEmailSendingPermitted:Ljava/lang/reflect/Method;

    .line 57
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "jarPath":Ljava/lang/String;
    :cond_2a
    sget-object v6, Lcom/android/okhttp/internal/cta/CtaAdapter;->ctaCheckRequestIsMmsAndEmailSendingPermitted:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_3c} :catch_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3e

    move-result v6

    return v6

    .line 63
    :catch_3e
    move-exception v4

    .line 64
    .local v4, "ee":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ee:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    .end local v4    # "ee":Ljava/lang/Exception;
    :cond_58
    return v10

    .line 58
    :catch_59
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/SecurityException;

    if-eqz v6, :cond_58

    .line 61
    new-instance v6, Ljava/lang/SecurityException;

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static isSendingPermitted([B)Z
    .registers 12
    .param p0, "pdu"    # [B

    .prologue
    const/4 v10, 0x1

    .line 24
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "Check isMmsSendPdu"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    :try_start_9
    sget-object v6, Lcom/android/okhttp/internal/cta/CtaAdapter;->ctaCheckPduIsMmsAndEmailSendingPermitted:Ljava/lang/reflect/Method;

    if-nez v6, :cond_32

    .line 27
    const-string/jumbo v5, "system/framework/mediatek-cta.jar"

    .line 28
    .local v5, "jarPath":Ljava/lang/String;
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 29
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v1, "com.mediatek.cta.CtaHttp"

    .line 31
    .local v1, "className":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v1, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 33
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "isMmsAndEmailSendingPermitted"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, [Ljava/lang/Byte;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 32
    sput-object v6, Lcom/android/okhttp/internal/cta/CtaAdapter;->ctaCheckPduIsMmsAndEmailSendingPermitted:Ljava/lang/reflect/Method;

    .line 35
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "jarPath":Ljava/lang/String;
    :cond_32
    sget-object v6, Lcom/android/okhttp/internal/cta/CtaAdapter;->ctaCheckPduIsMmsAndEmailSendingPermitted:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_44
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_9 .. :try_end_44} :catch_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_44} :catch_46

    move-result v6

    return v6

    .line 40
    :catch_46
    move-exception v4

    .line 41
    .local v4, "ee":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ee:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    .end local v4    # "ee":Ljava/lang/Exception;
    :cond_60
    return v10

    .line 36
    :catch_61
    move-exception v3

    .line 37
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/SecurityException;

    if-eqz v6, :cond_60

    .line 38
    new-instance v6, Ljava/lang/SecurityException;

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static updateMmsBufferSize(Lcom/android/okhttp/Request;Lcom/android/okhttp/Connection;)V
    .registers 7
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "conn"    # Lcom/android/okhttp/Connection;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/okhttp/internal/cta/CtaAdapter;->isMoMMS(Lcom/android/okhttp/Request;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 94
    :try_start_6
    invoke-interface {p1}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 95
    .local v1, "s":Ljava/net/Socket;
    if-eqz v1, :cond_1e

    .line 96
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Configure MMS buffer size"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 98
    const/16 v2, 0x4000

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_1f

    .line 104
    .end local v1    # "s":Ljava/net/Socket;
    :cond_1e
    :goto_1e
    return-void

    .line 100
    :catch_1f
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Socket Buffer size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1e
.end method
