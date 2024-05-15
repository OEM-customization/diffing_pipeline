.class public Ljava/security/KeyStore$PasswordProtection;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordProtection"
.end annotation


# instance fields
.field private volatile greylist-max-o destroyed:Z

.field private final greylist-max-o password:[C

.field private final greylist-max-o protectionAlgorithm:Ljava/lang/String;

.field private final greylist-max-o protectionParameters:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor whitelist test-api <init>([C)V
    .registers 4
    .param p1, "password"    # [C

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    .line 298
    const/4 v0, 0x0

    if-nez p1, :cond_b

    move-object v1, v0

    goto :goto_11

    :cond_b
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    :goto_11
    iput-object v1, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    .line 299
    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->protectionAlgorithm:Ljava/lang/String;

    .line 300
    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->protectionParameters:Ljava/security/spec/AlgorithmParameterSpec;

    .line 301
    return-void
.end method

.method public constructor whitelist test-api <init>([CLjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "password"    # [C
    .param p2, "protectionAlgorithm"    # Ljava/lang/String;
    .param p3, "protectionParameters"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    .line 327
    if-eqz p2, :cond_19

    .line 330
    if-nez p1, :cond_c

    const/4 v0, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    :goto_12
    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    .line 331
    iput-object p2, p0, Ljava/security/KeyStore$PasswordProtection;->protectionAlgorithm:Ljava/lang/String;

    .line 332
    iput-object p3, p0, Ljava/security/KeyStore$PasswordProtection;->protectionParameters:Ljava/security/spec/AlgorithmParameterSpec;

    .line 333
    return-void

    .line 328
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api destroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    monitor-enter p0

    .line 394
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    .line 395
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    if-eqz v0, :cond_d

    .line 396
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 398
    .end local p0    # "this":Ljava/security/KeyStore$PasswordProtection;
    :cond_d
    monitor-exit p0

    return-void

    .line 393
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api getPassword()[C
    .registers 3

    monitor-enter p0

    .line 381
    :try_start_1
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    if-nez v0, :cond_9

    .line 384
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    monitor-exit p0

    return-object v0

    .line 382
    .end local p0    # "this":Ljava/security/KeyStore$PasswordProtection;
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "password has been cleared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    .line 380
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api getProtectionAlgorithm()Ljava/lang/String;
    .registers 2

    .line 352
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->protectionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getProtectionParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 364
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->protectionParameters:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api isDestroyed()Z
    .registers 2

    monitor-enter p0

    .line 406
    :try_start_1
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 406
    .end local p0    # "this":Ljava/security/KeyStore$PasswordProtection;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
