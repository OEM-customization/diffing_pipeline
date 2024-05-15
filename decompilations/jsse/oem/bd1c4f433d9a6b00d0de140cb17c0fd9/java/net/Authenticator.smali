.class public abstract Ljava/net/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Authenticator$RequestorType;
    }
.end annotation


# static fields
.field private static theAuthenticator:Ljava/net/Authenticator;


# instance fields
.field private requestingAuthType:Ljava/net/Authenticator$RequestorType;

.field private requestingHost:Ljava/lang/String;

.field private requestingPort:I

.field private requestingPrompt:Ljava/lang/String;

.field private requestingProtocol:Ljava/lang/String;

.field private requestingScheme:Ljava/lang/String;

.field private requestingSite:Ljava/net/InetAddress;

.field private requestingURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .registers 11
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 229
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 230
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_12

    .line 232
    new-instance v1, Ljava/net/NetPermission;

    const-string/jumbo v3, "requestPasswordAuthentication"

    invoke-direct {v1, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, "requestPermission":Ljava/net/NetPermission;
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 236
    .end local v1    # "requestPermission":Ljava/net/NetPermission;
    :cond_12
    sget-object v0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    .line 237
    .local v0, "a":Ljava/net/Authenticator;
    if-nez v0, :cond_17

    .line 238
    return-object v4

    .line 240
    :cond_17
    monitor-enter v0

    .line 241
    :try_start_18
    invoke-direct {v0}, Ljava/net/Authenticator;->reset()V

    .line 242
    iput-object p0, v0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    .line 243
    iput-object p1, v0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 244
    iput p2, v0, Ljava/net/Authenticator;->requestingPort:I

    .line 245
    iput-object p3, v0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 246
    iput-object p4, v0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 247
    iput-object p5, v0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    .line 248
    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2d

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 240
    :catchall_2d
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .registers 13
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/net/URL;
    .param p7, "reqType"    # Ljava/net/Authenticator$RequestorType;

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 297
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_12

    .line 299
    new-instance v1, Ljava/net/NetPermission;

    const-string/jumbo v3, "requestPasswordAuthentication"

    invoke-direct {v1, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "requestPermission":Ljava/net/NetPermission;
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 303
    .end local v1    # "requestPermission":Ljava/net/NetPermission;
    :cond_12
    sget-object v0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    .line 304
    .local v0, "a":Ljava/net/Authenticator;
    if-nez v0, :cond_17

    .line 305
    return-object v4

    .line 307
    :cond_17
    monitor-enter v0

    .line 308
    :try_start_18
    invoke-direct {v0}, Ljava/net/Authenticator;->reset()V

    .line 309
    iput-object p0, v0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    .line 310
    iput-object p1, v0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 311
    iput p2, v0, Ljava/net/Authenticator;->requestingPort:I

    .line 312
    iput-object p3, v0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 313
    iput-object p4, v0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 314
    iput-object p5, v0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    .line 315
    iput-object p6, v0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    .line 316
    iput-object p7, v0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    .line 317
    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_31

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 307
    :catchall_31
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public static requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .registers 10
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "prompt"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 168
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_12

    .line 170
    new-instance v1, Ljava/net/NetPermission;

    const-string/jumbo v3, "requestPasswordAuthentication"

    invoke-direct {v1, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "requestPermission":Ljava/net/NetPermission;
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 174
    .end local v1    # "requestPermission":Ljava/net/NetPermission;
    :cond_12
    sget-object v0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    .line 175
    .local v0, "a":Ljava/net/Authenticator;
    if-nez v0, :cond_17

    .line 176
    return-object v4

    .line 178
    :cond_17
    monitor-enter v0

    .line 179
    :try_start_18
    invoke-direct {v0}, Ljava/net/Authenticator;->reset()V

    .line 180
    iput-object p0, v0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 181
    iput p1, v0, Ljava/net/Authenticator;->requestingPort:I

    .line 182
    iput-object p2, v0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 183
    iput-object p3, v0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 184
    iput-object p4, v0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    .line 185
    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2b

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 178
    :catchall_2b
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/Authenticator;->requestingPort:I

    .line 94
    iput-object v1, p0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    .line 98
    sget-object v0, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v0, p0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    .line 99
    return-void
.end method

.method public static declared-synchronized setDefault(Ljava/net/Authenticator;)V
    .registers 5
    .param p0, "a"    # Ljava/net/Authenticator;

    .prologue
    const-class v3, Ljava/net/Authenticator;

    monitor-enter v3

    .line 123
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 124
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_14

    .line 126
    new-instance v0, Ljava/net/NetPermission;

    const-string/jumbo v2, "setDefaultAuthenticator"

    invoke-direct {v0, v2}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "setDefaultPermission":Ljava/net/NetPermission;
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 130
    .end local v0    # "setDefaultPermission":Ljava/net/NetPermission;
    :cond_14
    sput-object p0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v3

    .line 131
    return-void

    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .registers 2

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingPort()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Ljava/net/Authenticator;->requestingPort:I

    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected getRequestingURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    return-object v0
.end method

.method protected getRequestorType()Ljava/net/Authenticator$RequestorType;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method
