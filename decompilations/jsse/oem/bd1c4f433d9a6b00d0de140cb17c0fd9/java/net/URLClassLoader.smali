.class public Ljava/net/URLClassLoader;
.super Ljava/security/SecureClassLoader;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private closeables:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/io/Closeable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final ucp:Lsun/misc/URLClassPath;


# direct methods
.method static synthetic -get0(Ljava/net/URLClassLoader;)Ljava/security/AccessControlContext;
    .registers 2
    .param p0, "-this"    # Ljava/net/URLClassLoader;

    .prologue
    iget-object v0, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method static synthetic -get1(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;
    .registers 2
    .param p0, "-this"    # Ljava/net/URLClassLoader;

    .prologue
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/net/URLClassLoader;Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    .registers 4
    .param p0, "-this"    # Ljava/net/URLClassLoader;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Lsun/misc/Resource;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 780
    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    .line 73
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;)V
    .registers 4
    .param p1, "urls"    # [Ljava/net/URL;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    .line 212
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 146
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 147
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 148
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 150
    :cond_13
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 151
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 152
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 100
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 212
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 102
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 103
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 104
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 106
    :cond_13
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 107
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 108
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .registers 7
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "factory"    # Ljava/net/URLStreamHandlerFactory;

    .prologue
    .line 187
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 212
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 189
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 190
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 191
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 193
    :cond_13
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 194
    new-instance v1, Lsun/misc/URLClassPath;

    iget-object v2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-direct {v1, p1, p3, v2}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;Ljava/security/AccessControlContext;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 195
    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V
    .registers 6
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 112
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 212
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 114
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 115
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 116
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 118
    :cond_13
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 119
    iput-object p3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 120
    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .registers 5
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    .line 212
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    .line 157
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 158
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 159
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 161
    :cond_13
    new-instance v1, Lsun/misc/URLClassPath;

    invoke-direct {v1, p1}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;)V

    iput-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    .line 162
    iput-object p2, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 163
    return-void
.end method

.method private defineClass(Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;
    .registers 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Lsun/misc/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsun/misc/Resource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 444
    .local v12, "t0":J
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 445
    .local v7, "i":I
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSourceURL()Ljava/net/URL;

    move-result-object v11

    .line 446
    .local v11, "url":Ljava/net/URL;
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1d

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, "pkgname":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v8

    .line 450
    .local v8, "man":Ljava/util/jar/Manifest;
    invoke-direct {p0, v9, v8, v11}, Ljava/net/URLClassLoader;->definePackageInternal(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)V

    .line 453
    .end local v8    # "man":Ljava/util/jar/Manifest;
    .end local v9    # "pkgname":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 454
    .local v6, "bb":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_31

    .line 456
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v10

    .line 457
    .local v10, "signers":[Ljava/security/CodeSigner;
    new-instance v5, Ljava/security/CodeSource;

    invoke-direct {v5, v11, v10}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 458
    .local v5, "cs":Ljava/security/CodeSource;
    invoke-virtual {p0, p1, v6, v5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 460
    .end local v5    # "cs":Ljava/security/CodeSource;
    .end local v10    # "signers":[Ljava/security/CodeSigner;
    :cond_31
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getBytes()[B

    move-result-object v2

    .line 462
    .local v2, "b":[B
    invoke-virtual/range {p2 .. p2}, Lsun/misc/Resource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v10

    .line 463
    .restart local v10    # "signers":[Ljava/security/CodeSigner;
    new-instance v5, Ljava/security/CodeSource;

    invoke-direct {v5, v11, v10}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 464
    .restart local v5    # "cs":Ljava/security/CodeSource;
    array-length v4, v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private definePackageInternal(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)V
    .registers 14
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;

    .prologue
    .line 418
    invoke-direct {p0, p1, p2, p3}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_b

    .line 420
    if-eqz p2, :cond_c

    .line 421
    :try_start_8
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    .line 435
    :cond_b
    :goto_b
    return-void

    .line 423
    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_b

    .line 425
    :catch_19
    move-exception v9

    .line 428
    .local v9, "iae":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1, p2, p3}, Ljava/net/URLClassLoader;->getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_b

    .line 430
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private getAndVerifyPackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .registers 8
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    .line 393
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_5c

    .line 395
    invoke-virtual {v0}, Ljava/lang/Package;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 397
    invoke-virtual {v0, p3}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 398
    new-instance v1, Ljava/lang/SecurityException;

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sealing violation: package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is sealed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_33
    if-eqz p2, :cond_5c

    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 405
    new-instance v1, Ljava/lang/SecurityException;

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sealing violation: can\'t seal package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 407
    const-string/jumbo v3, ": already loaded"

    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_5c
    return-object v0
.end method

.method private isSealed(Ljava/lang/String;Ljava/util/jar/Manifest;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;

    .prologue
    .line 538
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    .line 540
    .local v0, "attr":Ljava/util/jar/Attributes;
    const/4 v2, 0x0

    .line 541
    .local v2, "sealed":Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 542
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 544
    .end local v2    # "sealed":Ljava/lang/String;
    :cond_1c
    if-nez v2, :cond_2a

    .line 545
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 546
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 549
    :cond_2a
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public static newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .registers 4
    .param p0, "urls"    # [Ljava/net/URL;

    .prologue
    .line 757
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 760
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v2, Ljava/net/URLClassLoader$6;

    invoke-direct {v2, p0, v0}, Ljava/net/URLClassLoader$6;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    .line 759
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader;

    .line 765
    .local v1, "ucl":Ljava/net/URLClassLoader;
    return-object v1
.end method

.method public static newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .registers 5
    .param p0, "urls"    # [Ljava/net/URL;
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 732
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 735
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v2, Ljava/net/URLClassLoader$5;

    invoke-direct {v2, p0, p1, v0}, Ljava/net/URLClassLoader$5;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V

    .line 734
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader;

    .line 740
    .local v1, "ucl":Ljava/net/URLClassLoader;
    return-object v1
.end method


# virtual methods
.method protected addURL(Ljava/net/URL;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 331
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v0, p1}, Lsun/misc/URLClassPath;->addURL(Ljava/net/URL;)V

    .line 332
    return-void
.end method

.method public close()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v8

    .line 287
    .local v8, "security":Ljava/lang/SecurityManager;
    if-eqz v8, :cond_11

    .line 288
    new-instance v9, Ljava/lang/RuntimePermission;

    const-string/jumbo v10, "closeClassLoader"

    invoke-direct {v9, v10}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 290
    :cond_11
    iget-object v9, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v9}, Lsun/misc/URLClassPath;->closeLoaders()Ljava/util/List;

    move-result-object v4

    .line 294
    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    iget-object v10, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v10

    .line 295
    :try_start_1a
    iget-object v9, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 296
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_39

    .line 298
    .local v0, "c":Ljava/io/Closeable;
    :try_start_30
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_39

    goto :goto_24

    .line 299
    :catch_34
    move-exception v6

    .line 300
    .local v6, "ioex":Ljava/io/IOException;
    :try_start_35
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_24

    .line 294
    .end local v0    # "c":Ljava/io/Closeable;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v6    # "ioex":Ljava/io/IOException;
    .end local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    :catchall_39
    move-exception v9

    monitor-exit v10

    throw v9

    .line 303
    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    .restart local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/Closeable;>;"
    :cond_3c
    :try_start_3c
    iget-object v9, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->clear()V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_39

    monitor-exit v10

    .line 306
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 307
    return-void

    .line 310
    :cond_49
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    .line 314
    .local v5, "firstex":Ljava/io/IOException;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "error$iterator":Ljava/util/Iterator;
    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    .line 315
    .local v2, "error":Ljava/io/IOException;
    invoke-virtual {v5, v2}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_54

    .line 317
    .end local v2    # "error":Ljava/io/IOException;
    :cond_64
    throw v5
.end method

.method protected definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 486
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 487
    .local v10, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "specTitle":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "specVersion":Ljava/lang/String;
    const/4 v4, 0x0

    .line 488
    .local v4, "specVendor":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "implTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "implVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 489
    .local v7, "implVendor":Ljava/lang/String;
    const/4 v11, 0x0

    .line 490
    .local v11, "sealed":Ljava/lang/String;
    const/4 v8, 0x0

    .line 492
    .local v8, "sealBase":Ljava/net/URL;
    invoke-virtual {p2, v10}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v9

    .line 493
    .local v9, "attr":Ljava/util/jar/Attributes;
    if-eqz v9, :cond_47

    .line 494
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "specTitle":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "specVersion":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "specVendor":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "implTitle":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "implVersion":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 500
    .local v7, "implVendor":Ljava/lang/String;
    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v11

    .line 502
    .end local v2    # "specTitle":Ljava/lang/String;
    .end local v3    # "specVersion":Ljava/lang/String;
    .end local v4    # "specVendor":Ljava/lang/String;
    .end local v5    # "implTitle":Ljava/lang/String;
    .end local v6    # "implVersion":Ljava/lang/String;
    .end local v7    # "implVendor":Ljava/lang/String;
    .end local v11    # "sealed":Ljava/lang/String;
    :cond_47
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v9

    .line 503
    if-eqz v9, :cond_85

    .line 504
    if-nez v2, :cond_55

    .line 505
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 507
    :cond_55
    if-nez v3, :cond_5d

    .line 508
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 510
    :cond_5d
    if-nez v4, :cond_65

    .line 511
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 513
    :cond_65
    if-nez v5, :cond_6d

    .line 514
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 516
    :cond_6d
    if-nez v6, :cond_75

    .line 517
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 519
    :cond_75
    if-nez v7, :cond_7d

    .line 520
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 522
    :cond_7d
    if-nez v11, :cond_85

    .line 523
    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v11

    .line 526
    :cond_85
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 527
    move-object v8, p3

    .end local v8    # "sealBase":Ljava/net/URL;
    :cond_8f
    move-object v0, p0

    move-object v1, p1

    .line 529
    invoke-virtual/range {v0 .. v8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 361
    :try_start_0
    new-instance v2, Ljava/net/URLClassLoader$1;

    invoke-direct {v2, p0, p1}, Ljava/net/URLClassLoader$1;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 360
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_d} :catch_15

    .line 379
    .local v1, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1d

    .line 380
    new-instance v2, Ljava/lang/ClassNotFoundException;

    invoke-direct {v2, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    .end local v1    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_15
    move-exception v0

    .line 377
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassNotFoundException;

    throw v2

    .line 382
    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    .restart local v1    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    return-object v1
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 564
    new-instance v2, Ljava/net/URLClassLoader$2;

    invoke-direct {v2, p0, p1}, Ljava/net/URLClassLoader$2;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 563
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 570
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_16

    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v1, v0}, Lsun/misc/URLClassPath;->checkURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    :cond_16
    return-object v1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v1, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lsun/misc/URLClassPath;->findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    .line 587
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    new-instance v1, Ljava/net/URLClassLoader$3;

    invoke-direct {v1, p0, v0}, Ljava/net/URLClassLoader$3;-><init>(Ljava/net/URLClassLoader;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 15
    .param p1, "codesource"    # Ljava/security/CodeSource;

    .prologue
    .line 651
    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v6

    .line 653
    .local v6, "perms":Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v8

    .line 659
    .local v8, "url":Ljava/net/URL;
    :try_start_8
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 660
    .local v9, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v9}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_53

    move-result-object v4

    .line 666
    .end local v9    # "urlConnection":Ljava/net/URLConnection;
    :goto_10
    instance-of v10, v4, Ljava/io/FilePermission;

    if-eqz v10, :cond_57

    .line 670
    invoke-virtual {v4}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 671
    .local v5, "path":Ljava/lang/String;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 672
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 673
    new-instance v4, Ljava/io/FilePermission;

    const-string/jumbo v10, "read"

    invoke-direct {v4, v5, v10}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .end local v5    # "path":Ljava/lang/String;
    :cond_3c
    :goto_3c
    if-eqz v4, :cond_52

    .line 701
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    .line 702
    .local v7, "sm":Ljava/lang/SecurityManager;
    if-eqz v7, :cond_4f

    .line 703
    move-object v0, v4

    .line 704
    .local v0, "fp":Ljava/security/Permission;
    new-instance v10, Ljava/net/URLClassLoader$4;

    invoke-direct {v10, p0, v7, v0}, Ljava/net/URLClassLoader$4;-><init>(Ljava/net/URLClassLoader;Ljava/lang/SecurityManager;Ljava/security/Permission;)V

    .line 709
    iget-object v11, p0, Ljava/net/URLClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 704
    invoke-static {v10, v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 711
    .end local v0    # "fp":Ljava/security/Permission;
    :cond_4f
    invoke-virtual {v6, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 713
    .end local v7    # "sm":Ljava/lang/SecurityManager;
    :cond_52
    return-object v6

    .line 661
    :catch_53
    move-exception v2

    .line 662
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 663
    .local v4, "p":Ljava/security/Permission;
    const/4 v9, 0x0

    .local v9, "urlConnection":Ljava/net/URLConnection;
    goto :goto_10

    .line 675
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v4    # "p":Ljava/security/Permission;
    .end local v9    # "urlConnection":Ljava/net/URLConnection;
    :cond_57
    if-nez v4, :cond_9b

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 676
    invoke-virtual {v8}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    sget-char v11, Ljava/io/File;->separatorChar:C

    const/16 v12, 0x2f

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 677
    .restart local v5    # "path":Ljava/lang/String;
    invoke-static {v5}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 678
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_92

    .line 679
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 680
    :cond_92
    new-instance v4, Ljava/io/FilePermission;

    const-string/jumbo v10, "read"

    invoke-direct {v4, v5, v10}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "p":Ljava/security/Permission;
    goto :goto_3c

    .line 687
    .end local v4    # "p":Ljava/security/Permission;
    .end local v5    # "path":Ljava/lang/String;
    :cond_9b
    move-object v3, v8

    .line 688
    .local v3, "locUrl":Ljava/net/URL;
    instance-of v10, v9, Ljava/net/JarURLConnection;

    if-eqz v10, :cond_a6

    .line 689
    check-cast v9, Ljava/net/JarURLConnection;

    invoke-virtual {v9}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v3

    .line 691
    :cond_a6
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3c

    .line 693
    new-instance v4, Ljava/net/SocketPermission;

    .line 694
    const-string/jumbo v10, "connect,accept"

    .line 693
    invoke-direct {v4, v1, v10}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4    # "p":Ljava/security/Permission;
    goto :goto_3c
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 231
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 233
    .local v5, "url":Ljava/net/URL;
    if-nez v5, :cond_8

    .line 234
    return-object v10

    .line 236
    :cond_8
    :try_start_8
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 237
    .local v6, "urlc":Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 238
    .local v2, "is":Ljava/io/InputStream;
    instance-of v7, v6, Ljava/net/JarURLConnection;

    if-eqz v7, :cond_34

    .line 239
    move-object v0, v6

    check-cast v0, Ljava/net/JarURLConnection;

    move-object v4, v0

    .line 240
    .local v4, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v3

    .line 241
    .local v3, "jar":Ljava/util/jar/JarFile;
    iget-object v8, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v8
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1f} :catch_32

    .line 242
    :try_start_1f
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 243
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2f

    :cond_2d
    :try_start_2d
    monitor-exit v8

    .line 251
    .end local v3    # "jar":Ljava/util/jar/JarFile;
    .end local v4    # "juc":Ljava/net/JarURLConnection;
    :cond_2e
    :goto_2e
    return-object v2

    .line 241
    .restart local v3    # "jar":Ljava/util/jar/JarFile;
    .restart local v4    # "juc":Ljava/net/JarURLConnection;
    :catchall_2f
    move-exception v7

    monitor-exit v8

    throw v7

    .line 252
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "jar":Ljava/util/jar/JarFile;
    .end local v4    # "juc":Ljava/net/JarURLConnection;
    .end local v6    # "urlc":Ljava/net/URLConnection;
    :catch_32
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    return-object v10

    .line 246
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v6    # "urlc":Ljava/net/URLConnection;
    :cond_34
    instance-of v7, v6, Lsun/net/www/protocol/file/FileURLConnection;

    if-eqz v7, :cond_2e

    .line 247
    iget-object v8, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    monitor-enter v8
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_32

    .line 248
    :try_start_3b
    iget-object v7, p0, Ljava/net/URLClassLoader;->closeables:Ljava/util/WeakHashMap;

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_43

    :try_start_41
    monitor-exit v8

    goto :goto_2e

    .line 247
    :catchall_43
    move-exception v7

    monitor-exit v8

    throw v7
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_32
.end method

.method public getURLs()[Ljava/net/URL;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Ljava/net/URLClassLoader;->ucp:Lsun/misc/URLClassPath;

    invoke-virtual {v0}, Lsun/misc/URLClassPath;->getURLs()[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
