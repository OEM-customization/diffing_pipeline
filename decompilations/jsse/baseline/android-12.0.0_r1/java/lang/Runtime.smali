.class public Ljava/lang/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# static fields
.field private static greylist-max-o currentRuntime:Ljava/lang/Runtime;

.field private static greylist-max-o finalizeOnExit:Z


# instance fields
.field private volatile greylist mLibPaths:[Ljava/lang/String;

.field private greylist-max-o shutdownHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o shuttingDown:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/lang/Runtime;

    invoke-direct {v0}, Ljava/lang/Runtime;-><init>()V

    sput-object v0, Ljava/lang/Runtime;->currentRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method private constructor greylist-max-r <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    .line 1092
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    .line 96
    return-void
.end method

.method private greylist-max-o checkTargetSdkVersionForLoad(Ljava/lang/String;)V
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;

    .line 897
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 898
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x18

    if-gt v0, v1, :cond_d

    .line 902
    return-void

    .line 899
    :cond_d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not supported on SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o getLibPaths()[Ljava/lang/String;
    .registers 2

    .line 1095
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    if-nez v0, :cond_14

    .line 1096
    monitor-enter p0

    .line 1097
    :try_start_5
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1098
    invoke-static {}, Ljava/lang/Runtime;->initLibPaths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    .line 1100
    :cond_f
    monitor-exit p0

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0

    .line 1102
    :cond_14
    :goto_14
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist test-api getRuntime()Ljava/lang/Runtime;
    .registers 1

    .line 92
    sget-object v0, Ljava/lang/Runtime;->currentRuntime:Ljava/lang/Runtime;

    return-object v0
.end method

.method private static greylist-max-o initLibPaths()[Ljava/lang/String;
    .registers 6

    .line 1106
    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "javaLibraryPath":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 1108
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 1110
    :cond_b
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "paths":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_35

    .line 1113
    aget-object v3, v1, v2

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1112
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1117
    .end local v2    # "i":I
    :cond_35
    return-object v1
.end method

.method private declared-synchronized blacklist loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 9
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "libname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p2, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 1042
    :try_start_1
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_74

    .line 1046
    move-object v0, p3

    .line 1050
    .local v0, "libraryName":Ljava/lang/String;
    if-eqz p1, :cond_5f

    instance-of v1, p1, Ljava/lang/BootClassLoader;

    if-nez v1, :cond_5f

    .line 1051
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    .local v1, "filename":Ljava/lang/String;
    if-nez v1, :cond_2c

    .line 1053
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ldalvik/system/PathClassLoader;

    if-eq v2, v3, :cond_27

    .line 1054
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ldalvik/system/DelegateLastClassLoader;

    if-ne v2, v3, :cond_2c

    .line 1065
    .end local p0    # "this":Ljava/lang/Runtime;
    :cond_27
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1067
    :cond_2c
    if-eqz v1, :cond_3c

    .line 1075
    invoke-static {v1, p1}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v2
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_8b

    .line 1076
    .local v2, "error":Ljava/lang/String;
    if-nez v2, :cond_36

    .line 1079
    monitor-exit p0

    return-void

    .line 1077
    .restart local p0    # "this":Ljava/lang/Runtime;
    :cond_36
    :try_start_36
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v3, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1072
    .end local v2    # "error":Ljava/lang/String;
    .end local p0    # "this":Ljava/lang/Runtime;
    :cond_3c
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " couldn\'t find \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1084
    .end local v1    # "filename":Ljava/lang/String;
    :cond_5f
    invoke-direct {p0}, Ljava/lang/Runtime;->getLibPaths()[Ljava/lang/String;

    .line 1085
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    .restart local v1    # "filename":Ljava/lang/String;
    invoke-static {v1, p1, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2
    :try_end_6a
    .catchall {:try_start_36 .. :try_end_6a} :catchall_8b

    .line 1087
    .restart local v2    # "error":Ljava/lang/String;
    if-nez v2, :cond_6e

    .line 1090
    monitor-exit p0

    return-void

    .line 1088
    .restart local p0    # "this":Ljava/lang/Runtime;
    :cond_6e
    :try_start_6e
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v3, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1043
    .end local v0    # "libraryName":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "error":Ljava/lang/String;
    .end local p0    # "this":Ljava/lang/Runtime;
    :cond_74
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory separator should not appear in library name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8b
    .catchall {:try_start_6e .. :try_end_8b} :catchall_8b

    .line 1041
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "libname":Ljava/lang/String;
    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static native greylist-max-o nativeExit(I)V
.end method

.method private native blacklist nativeGc()V
.end method

.method private static greylist nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 1121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native greylist-max-o runFinalization0()V
.end method

.method public static whitelist test-api runFinalizersOnExit(Z)V
    .registers 1
    .param p0, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    sput-boolean p0, Ljava/lang/Runtime;->finalizeOnExit:Z

    .line 389
    return-void
.end method


# virtual methods
.method public whitelist test-api addShutdownHook(Ljava/lang/Thread;)V
    .registers 5
    .param p1, "hook"    # Ljava/lang/Thread;

    .line 272
    if-eqz p1, :cond_37

    .line 276
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-nez v0, :cond_2f

    .line 280
    iget-boolean v0, p1, Ljava/lang/Thread;->started:Z

    if-nez v0, :cond_27

    .line 284
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v0

    .line 285
    :try_start_d
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 289
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    monitor-exit v0

    .line 291
    return-void

    .line 286
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Hook already registered."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/Runtime;
    .end local p1    # "hook":Ljava/lang/Thread;
    throw v1

    .line 290
    .restart local p0    # "this":Ljava/lang/Runtime;
    .restart local p1    # "hook":Ljava/lang/Thread;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v1

    .line 281
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hook has already been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VM already shutting down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hook == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api availableProcessors()I
    .registers 3

    .line 710
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    invoke-interface {v0, v1}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api exec(Ljava/lang/String;)Ljava/lang/Process;
    .registers 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_26

    .line 520
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 522
    .local v1, "cmdarray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 523
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 524
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {p0, v1, p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v2

    return-object v2

    .line 518
    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "cmdarray":[Ljava/lang/String;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api exec([Ljava/lang/String;)Ljava/lang/Process;
    .registers 3
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 4
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 5
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0, p2}, Ljava/lang/ProcessBuilder;->environment([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    .line 693
    invoke-virtual {v0, p3}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 691
    return-object v0
.end method

.method public whitelist test-api exit(I)V
    .registers 7
    .param p1, "status"    # I

    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-nez v0, :cond_41

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    .line 145
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_43

    .line 147
    :try_start_b
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Thread;

    .line 148
    .local v1, "hooks":[Ljava/lang/Thread;
    iget-object v2, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_3e

    .line 152
    :try_start_19
    array-length v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v3, v0, :cond_26

    aget-object v4, v1, v3

    .line 153
    .local v4, "hook":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 152
    .end local v4    # "hook":Ljava/lang/Thread;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 157
    :cond_26
    array-length v0, v1

    :goto_27
    if-ge v2, v0, :cond_33

    aget-object v3, v1, v2
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_43

    .line 159
    .local v3, "hook":Ljava/lang/Thread;
    :try_start_2b
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_43

    .line 162
    goto :goto_30

    .line 160
    :catch_2f
    move-exception v4

    .line 157
    .end local v3    # "hook":Ljava/lang/Thread;
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 166
    :cond_33
    :try_start_33
    sget-boolean v0, Ljava/lang/Runtime;->finalizeOnExit:Z

    if-eqz v0, :cond_3a

    .line 167
    invoke-virtual {p0}, Ljava/lang/Runtime;->runFinalization()V

    .line 171
    :cond_3a
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_43

    goto :goto_41

    .line 149
    .end local v1    # "hooks":[Ljava/lang/Thread;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .end local p0    # "this":Ljava/lang/Runtime;
    .end local p1    # "status":I
    :try_start_40
    throw v1

    .line 173
    .restart local p0    # "this":Ljava/lang/Runtime;
    .restart local p1    # "status":I
    :cond_41
    :goto_41
    monitor-exit p0

    .line 174
    return-void

    .line 173
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public native whitelist test-api freeMemory()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api gc()V
    .registers 2

    .line 770
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onExplicitGc()V

    .line 771
    invoke-direct {p0}, Ljava/lang/Runtime;->nativeGc()V

    .line 772
    return-void
.end method

.method public whitelist test-api getLocalizedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1150
    return-object p1
.end method

.method public whitelist test-api getLocalizedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1178
    return-object p1
.end method

.method public whitelist test-api halt(I)V
    .registers 2
    .param p1, "status"    # I

    .line 357
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V

    .line 358
    return-void
.end method

.method public whitelist test-api load(Ljava/lang/String;)V
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 892
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method greylist load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "absolutePath"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 906
    const-string v0, "java.lang.Runtime#load(String, ClassLoader)"

    invoke-direct {p0, v0}, Ljava/lang/Runtime;->checkTargetSdkVersionForLoad(Ljava/lang/String;)V

    .line 908
    const-string v0, "java.lang.Runtime#load(String, ClassLoader) is private and will be removed in a future Android release"

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 910
    if-eqz p1, :cond_19

    .line 913
    invoke-static {p1, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 917
    return-void

    .line 915
    :cond_13
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    .end local v0    # "error":Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "absolutePath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized greylist-max-o load0(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 920
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 924
    if-eqz p2, :cond_20

    .line 927
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_3f

    .line 928
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_1a

    .line 931
    monitor-exit p0

    return-void

    .line 929
    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    .end local v0    # "error":Ljava/lang/String;
    .end local p0    # "this":Ljava/lang/Runtime;
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_28
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting an absolute path of the library: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_3f

    .line 919
    .end local p1    # "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "filename":Ljava/lang/String;
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api loadLibrary(Ljava/lang/String;)V
    .registers 3
    .param p1, "libname"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 979
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public greylist loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "libname"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 1012
    const-string v0, "java.lang.Runtime#loadLibrary(String, ClassLoader)"

    invoke-direct {p0, v0}, Ljava/lang/Runtime;->checkTargetSdkVersionForLoad(Ljava/lang/String;)V

    .line 1013
    const-string v0, "java.lang.Runtime#loadLibrary(String, ClassLoader) is private and will be removed in a future Android release"

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 1017
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method blacklist loadLibrary0(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .param p2, "libname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 997
    .local p1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/ClassLoader;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 998
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v0, p1, p2}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method greylist loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "libname"    # Ljava/lang/String;

    .line 1024
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method public native whitelist test-api maxMemory()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api removeShutdownHook(Ljava/lang/Thread;)Z
    .registers 4
    .param p1, "hook"    # Ljava/lang/Thread;

    .line 315
    if-eqz p1, :cond_1c

    .line 319
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-nez v0, :cond_14

    .line 323
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v0

    .line 324
    :try_start_9
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 325
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1

    .line 320
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VM already shutting down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hook == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api runFinalization()V
    .registers 3

    .line 798
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ldalvik/system/VMRuntime;->runFinalization(J)V

    .line 799
    return-void
.end method

.method public native whitelist test-api totalMemory()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api traceInstructions(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 820
    return-void
.end method

.method public whitelist test-api traceMethodCalls(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 843
    if-nez p1, :cond_3

    .line 846
    return-void

    .line 844
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
