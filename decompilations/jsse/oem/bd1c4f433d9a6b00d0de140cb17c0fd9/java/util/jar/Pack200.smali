.class public abstract Ljava/util/jar/Pack200;
.super Ljava/lang/Object;
.source "Pack200.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Pack200$Packer;,
        Ljava/util/jar/Pack200$Unpacker;
    }
.end annotation


# static fields
.field private static final PACK_PROVIDER:Ljava/lang/String; = "java.util.jar.Pack200.Packer"

.field private static final UNPACK_PROVIDER:Ljava/lang/String; = "java.util.jar.Pack200.Unpacker"

.field private static packerImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static unpackerImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .param p0, "prop"    # Ljava/lang/String;

    .prologue
    const-class v7, Ljava/util/jar/Pack200;

    monitor-enter v7

    .line 792
    :try_start_3
    const-string/jumbo v5, "(unknown)"
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6a

    .line 794
    .local v5, "implName":Ljava/lang/String;
    :try_start_6
    const-string/jumbo v6, "java.util.jar.Pack200.Packer"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    sget-object v4, Ljava/util/jar/Pack200;->packerImpl:Ljava/lang/Class;

    .line 795
    .local v4, "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_11
    if-nez v4, :cond_34

    .line 798
    new-instance v6, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v8, ""

    invoke-direct {v6, p0, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 799
    if-eqz v5, :cond_34

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_34

    .line 800
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 809
    :cond_34
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_37} :catch_9a
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_37} :catch_6d
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_37} :catch_3d
    .catchall {:try_start_6 .. :try_end_37} :catchall_6a

    move-result-object v6

    monitor-exit v7

    return-object v6

    .line 794
    .end local v4    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3a
    :try_start_3a
    sget-object v4, Ljava/util/jar/Pack200;->unpackerImpl:Ljava/lang/Class;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_3c} :catch_9a
    .catch Ljava/lang/InstantiationException; {:try_start_3a .. :try_end_3c} :catch_6d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_3c} :catch_3d
    .catchall {:try_start_3a .. :try_end_3c} :catchall_6a

    .restart local v4    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_11

    .line 818
    .end local v4    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3d
    move-exception v2

    .line 819
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_3e
    new-instance v6, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot access class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 820
    const-string/jumbo v9, ":\ncheck property "

    .line 819
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 821
    const-string/jumbo v9, " in your properties file."

    .line 819
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_6a
    .catchall {:try_start_3e .. :try_end_6a} :catchall_6a

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v5    # "implName":Ljava/lang/String;
    :catchall_6a
    move-exception v6

    monitor-exit v7

    throw v6

    .line 814
    .restart local v5    # "implName":Ljava/lang/String;
    :catch_6d
    move-exception v3

    .line 815
    .local v3, "e":Ljava/lang/InstantiationException;
    :try_start_6e
    new-instance v6, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not instantiate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 816
    const-string/jumbo v9, ":\ncheck property "

    .line 815
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 817
    const-string/jumbo v9, " in your properties file."

    .line 815
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 810
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_9a
    move-exception v1

    .line 811
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Class not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 812
    const-string/jumbo v9, ":\ncheck property "

    .line 811
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 813
    const-string/jumbo v9, " in your properties file."

    .line 811
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_c7
    .catchall {:try_start_6e .. :try_end_c7} :catchall_6a
.end method

.method public static declared-synchronized newPacker()Ljava/util/jar/Pack200$Packer;
    .registers 2

    .prologue
    const-class v1, Ljava/util/jar/Pack200;

    monitor-enter v1

    .line 135
    :try_start_3
    const-string/jumbo v0, "java.util.jar.Pack200.Packer"

    invoke-static {v0}, Ljava/util/jar/Pack200;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Pack200$Packer;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static newUnpacker()Ljava/util/jar/Pack200$Unpacker;
    .registers 1

    .prologue
    .line 162
    const-string/jumbo v0, "java.util.jar.Pack200.Unpacker"

    invoke-static {v0}, Ljava/util/jar/Pack200;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Pack200$Unpacker;

    return-object v0
.end method
