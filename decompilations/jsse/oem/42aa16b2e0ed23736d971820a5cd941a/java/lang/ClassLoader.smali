.class public abstract Ljava/lang/ClassLoader;
.super Ljava/lang/Object;
.source "ClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ClassLoader$SystemClassLoader;
    }
.end annotation


# instance fields
.field private transient greylist-max-o allocator:J

.field private transient greylist-max-o classTable:J

.field private final greylist-max-o packages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist parent:Ljava/lang/ClassLoader;

.field public final greylist-max-o proxyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 290
    invoke-static {}, Ljava/lang/ClassLoader;->checkCreateClassLoader()Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/Void;Ljava/lang/ClassLoader;)V

    .line 291
    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .line 271
    invoke-static {}, Ljava/lang/ClassLoader;->checkCreateClassLoader()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/Void;Ljava/lang/ClassLoader;)V

    .line 272
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Void;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    .line 248
    iput-object p2, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    .line 249
    return-void
.end method

.method static synthetic blacklist access$000()Ljava/lang/ClassLoader;
    .registers 1

    .line 180
    invoke-static {}, Ljava/lang/ClassLoader;->createSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o checkCreateClassLoader()Ljava/lang/Void;
    .registers 1

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o createSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    .line 207
    const-string v0, "java.class.path"

    const-string v1, "."

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "classPath":Ljava/lang/String;
    const-string v1, "java.library.path"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "librarySearchPath":Ljava/lang/String;
    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v2
.end method

.method private greylist-max-o findBootstrapClassOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 715
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 958
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 967
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 1104
    .local p0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 1105
    const/4 v0, 0x0

    return-object v0

    .line 1110
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1098
    sget-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getSystemResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 917
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 918
    .local v0, "system":Ljava/lang/ClassLoader;
    if-nez v0, :cond_b

    .line 919
    invoke-static {p0}, Ljava/lang/ClassLoader;->getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 921
    :cond_b
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 1009
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1011
    .local v0, "url":Ljava/net/URL;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    :try_start_7
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_e

    .line 1012
    :catch_c
    move-exception v2

    .line 1013
    .local v2, "e":Ljava/io/IOException;
    return-object v1

    .line 1011
    .end local v2    # "e":Ljava/io/IOException;
    :cond_e
    :goto_e
    return-object v1
.end method

.method public static whitelist core-platform-api test-api getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 948
    .local v0, "system":Ljava/lang/ClassLoader;
    if-nez v0, :cond_b

    .line 949
    invoke-static {p0}, Ljava/lang/ClassLoader;->getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1

    .line 951
    :cond_b
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method protected static whitelist core-platform-api test-api registerAsParallelCapable()Z
    .registers 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 900
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api clearAssertionStatus()V
    .registers 1

    .line 1335
    return-void
.end method

.method protected final whitelist core-platform-api test-api defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/nio/ByteBuffer;
    .param p3, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 660
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist core-platform-api test-api defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist core-platform-api test-api defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 591
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist core-platform-api test-api defineClass([BII)Ljava/lang/Class;
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t load this type of class file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .registers 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "specTitle"    # Ljava/lang/String;
    .param p3, "specVersion"    # Ljava/lang/String;
    .param p4, "specVendor"    # Ljava/lang/String;
    .param p5, "implTitle"    # Ljava/lang/String;
    .param p6, "implVersion"    # Ljava/lang/String;
    .param p7, "implVendor"    # Ljava/lang/String;
    .param p8, "sealBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1162
    move-object v11, p0

    move-object/from16 v12, p1

    iget-object v13, v11, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    monitor-enter v13

    .line 1163
    :try_start_6
    iget-object v0, v11, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;

    .line 1164
    .local v0, "pkg":Ljava/lang/Package;
    if-nez v0, :cond_2f

    .line 1167
    new-instance v14, Ljava/lang/Package;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, p0

    invoke-direct/range {v1 .. v10}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    move-object v0, v14

    .line 1170
    iget-object v1, v11, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    monitor-exit v13

    return-object v0

    .line 1165
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/ClassLoader;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "specTitle":Ljava/lang/String;
    .end local p3    # "specVersion":Ljava/lang/String;
    .end local p4    # "specVendor":Ljava/lang/String;
    .end local p5    # "implTitle":Ljava/lang/String;
    .end local p6    # "implVersion":Ljava/lang/String;
    .end local p7    # "implVendor":Ljava/lang/String;
    .end local p8    # "sealBase":Ljava/net/URL;
    throw v1

    .line 1172
    .end local v0    # "pkg":Ljava/lang/Package;
    .restart local p0    # "this":Ljava/lang/ClassLoader;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "specTitle":Ljava/lang/String;
    .restart local p3    # "specVersion":Ljava/lang/String;
    .restart local p4    # "specVendor":Ljava/lang/String;
    .restart local p5    # "implTitle":Ljava/lang/String;
    .restart local p6    # "implVersion":Ljava/lang/String;
    .restart local p7    # "implVendor":Ljava/lang/String;
    .restart local p8    # "sealBase":Ljava/net/URL;
    :catchall_35
    move-exception v0

    monitor-exit v13
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_35

    throw v0
.end method

.method protected whitelist core-platform-api test-api findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "libname"    # Ljava/lang/String;

    .line 1234
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final whitelist core-platform-api test-api findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 734
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    if-ne p0, v0, :cond_8

    .line 735
    const/4 v0, 0x0

    .local v0, "loader":Ljava/lang/ClassLoader;
    goto :goto_9

    .line 737
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_8
    move-object v0, p0

    .line 738
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    :goto_9
    invoke-static {v0, p1}, Ljava/lang/VMClassLoader;->findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method protected whitelist core-platform-api test-api findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 857
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist core-platform-api test-api findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected final whitelist core-platform-api test-api findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 706
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist core-platform-api test-api getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1189
    iget-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1190
    :try_start_3
    iget-object v1, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Package;

    .line 1191
    .local v1, "pkg":Ljava/lang/Package;
    monitor-exit v0

    .line 1192
    return-object v1

    .line 1191
    .end local v1    # "pkg":Ljava/lang/Package;
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method protected whitelist core-platform-api test-api getPackages()[Ljava/lang/Package;
    .registers 4

    .line 1206
    iget-object v0, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1207
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Ljava/lang/ClassLoader;->packages:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1208
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Package;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1c

    .line 1210
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Package;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Package;

    return-object v0

    .line 1208
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Package;>;"
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final whitelist core-platform-api test-api getParent()Ljava/lang/ClassLoader;
    .registers 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1047
    iget-object v0, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 787
    iget-object v0, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_9

    .line 788
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .local v0, "url":Ljava/net/URL;
    goto :goto_d

    .line 790
    .end local v0    # "url":Ljava/net/URL;
    :cond_9
    invoke-static {p1}, Ljava/lang/ClassLoader;->getBootstrapResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 792
    .restart local v0    # "url":Ljava/net/URL;
    :goto_d
    if-nez v0, :cond_13

    .line 793
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 795
    :cond_13
    return-object v0
.end method

.method public whitelist core-platform-api test-api getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 987
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 989
    .local v0, "url":Ljava/net/URL;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    :try_start_7
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_e

    .line 990
    :catch_c
    move-exception v2

    .line 991
    .local v2, "e":Ljava/io/IOException;
    return-object v1

    .line 989
    .end local v2    # "e":Ljava/io/IOException;
    :cond_e
    :goto_e
    return-object v1
.end method

.method public whitelist core-platform-api test-api getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Enumeration;

    .line 834
    .local v0, "tmp":[Ljava/util/Enumeration;, "[Ljava/util/Enumeration<Ljava/net/URL;>;"
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 835
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_15

    .line 837
    :cond_f
    invoke-static {p1}, Ljava/lang/ClassLoader;->getBootstrapResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    aput-object v1, v0, v2

    .line 839
    :goto_15
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    aput-object v2, v0, v1

    .line 841
    new-instance v1, Lsun/misc/CompoundEnumeration;

    invoke-direct {v1, v0}, Lsun/misc/CompoundEnumeration;-><init>([Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist core-platform-api test-api loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 364
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_20

    .line 366
    :try_start_6
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_13

    .line 367
    iget-object v1, p0, Ljava/lang/ClassLoader;->parent:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    goto :goto_18

    .line 369
    :cond_13
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;->findBootstrapClassOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_17} :catch_19

    move-object v0, v1

    .line 374
    :goto_18
    goto :goto_1a

    .line 371
    :catch_19
    move-exception v1

    .line 376
    :goto_1a
    if-nez v0, :cond_20

    .line 379
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 382
    :cond_20
    return-object v0
.end method

.method protected final whitelist core-platform-api test-api resolveClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 679
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public whitelist core-platform-api test-api setClassAssertionStatus(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1319
    return-void
.end method

.method public whitelist core-platform-api test-api setDefaultAssertionStatus(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1253
    return-void
.end method

.method public whitelist core-platform-api test-api setPackageAssertionStatus(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1294
    return-void
.end method

.method protected final whitelist core-platform-api test-api setSigners(Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 3
    .param p2, "signers"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 754
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method
