.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final mainThreadGroup:Ljava/lang/ThreadGroup;

.field static final systemThreadGroup:Ljava/lang/ThreadGroup;


# instance fields
.field daemon:Z

.field destroyed:Z

.field groups:[Ljava/lang/ThreadGroup;

.field maxPriority:I

.field nUnstartedThreads:I

.field name:Ljava/lang/String;

.field ngroups:I

.field nthreads:I

.field private final parent:Ljava/lang/ThreadGroup;

.field threads:[Ljava/lang/Thread;

.field vmAllowSuspension:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    sput-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    .line 62
    new-instance v0, Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    const-string/jumbo v2, "main"

    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    sput-object v0, Ljava/lang/ThreadGroup;->mainThreadGroup:Ljava/lang/ThreadGroup;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 83
    const-string/jumbo v0, "system"

    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 84
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 4
    .param p1, "parent"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/ThreadGroup;->checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 5
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "parent"    # Ljava/lang/ThreadGroup;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 127
    iput-object p3, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 128
    iget v0, p2, Ljava/lang/ThreadGroup;->maxPriority:I

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 129
    iget-boolean v0, p2, Ljava/lang/ThreadGroup;->daemon:Z

    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    .line 130
    iget-boolean v0, p2, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    .line 131
    iput-object p2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 132
    invoke-direct {p2, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    .line 133
    return-void
.end method

.method private final add(Ljava/lang/ThreadGroup;)V
    .registers 4
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 819
    monitor-enter p0

    .line 820
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_e

    .line 821
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 819
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 823
    :cond_e
    :try_start_e
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-nez v0, :cond_25

    .line 824
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    .line 828
    :cond_17
    :goto_17
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    aput-object p1, v0, v1

    .line 832
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->ngroups:I
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_b

    monitor-exit p0

    .line 834
    return-void

    .line 825
    :cond_25
    :try_start_25
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    array-length v1, v1

    if-ne v0, v1, :cond_17

    .line 826
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_b

    goto :goto_17
.end method

.method private static checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;
    .registers 2
    .param p0, "parent"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method private enumerate([Ljava/lang/Thread;IZ)I
    .registers 11
    .param p1, "list"    # [Ljava/lang/Thread;
    .param p2, "n"    # I
    .param p3, "recurse"    # Z

    .prologue
    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, "ngroupsSnapshot":I
    const/4 v0, 0x0

    .line 439
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    .line 440
    :try_start_3
    iget-boolean v5, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_50

    if-eqz v5, :cond_a

    .line 441
    const/4 v5, 0x0

    monitor-exit p0

    return v5

    .line 443
    :cond_a
    :try_start_a
    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 444
    .local v4, "nt":I
    array-length v5, p1

    sub-int/2addr v5, p2

    if-le v4, v5, :cond_13

    .line 445
    array-length v5, p1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_50

    sub-int v4, v5, p2

    .line 447
    :cond_13
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "n":I
    .local v2, "n":I
    :goto_15
    if-ge v1, v4, :cond_2d

    .line 448
    :try_start_17
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_55

    move-result v5

    if-eqz v5, :cond_58

    .line 449
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "n":I
    .restart local p2    # "n":I
    :try_start_23
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    aput-object v5, p1, v2
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_50

    .line 447
    :goto_29
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "n":I
    .restart local v2    # "n":I
    goto :goto_15

    .line 452
    :cond_2d
    if-eqz p3, :cond_3d

    .line 453
    :try_start_2f
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 454
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v5, :cond_4e

    .line 455
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_55

    :cond_3d
    :goto_3d
    monitor-exit p0

    .line 461
    if-eqz p3, :cond_53

    .line 462
    const/4 v1, 0x0

    move p2, v2

    .end local v2    # "n":I
    .restart local p2    # "n":I
    :goto_42
    if-ge v1, v3, :cond_54

    .line 463
    aget-object v5, v0, v1

    const/4 v6, 0x1

    invoke-direct {v5, p1, p2, v6}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result p2

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 457
    .end local p2    # "n":I
    .restart local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v2    # "n":I
    :cond_4e
    const/4 v0, 0x0

    goto :goto_3d

    .line 439
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v4    # "nt":I
    .restart local p2    # "n":I
    :catchall_50
    move-exception v5

    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_51
    monitor-exit p0

    throw v5

    .end local p2    # "n":I
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local v4    # "nt":I
    :cond_53
    move p2, v2

    .line 466
    .end local v2    # "n":I
    .restart local p2    # "n":I
    :cond_54
    return p2

    .line 439
    .end local p2    # "n":I
    .restart local v2    # "n":I
    :catchall_55
    move-exception v5

    move p2, v2

    .end local v2    # "n":I
    .restart local p2    # "n":I
    goto :goto_51

    .end local p2    # "n":I
    .restart local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v2    # "n":I
    :cond_58
    move p2, v2

    .end local v2    # "n":I
    .restart local p2    # "n":I
    goto :goto_29
.end method

.method private enumerate([Ljava/lang/ThreadGroup;IZ)I
    .registers 10
    .param p1, "list"    # [Ljava/lang/ThreadGroup;
    .param p2, "n"    # I
    .param p3, "recurse"    # Z

    .prologue
    const/4 v5, 0x0

    .line 571
    const/4 v3, 0x0

    .line 572
    .local v3, "ngroupsSnapshot":I
    const/4 v0, 0x0

    .line 573
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    .line 574
    :try_start_4
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3e

    if-eqz v4, :cond_a

    monitor-exit p0

    .line 575
    return v5

    .line 577
    :cond_a
    :try_start_a
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 578
    .local v2, "ng":I
    array-length v4, p1

    sub-int/2addr v4, p2

    if-le v2, v4, :cond_13

    .line 579
    array-length v4, p1

    sub-int v2, v4, p2

    .line 581
    :cond_13
    if-lez v2, :cond_1c

    .line 582
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    const/4 v5, 0x0

    invoke-static {v4, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    add-int/2addr p2, v2

    .line 585
    :cond_1c
    if-eqz p3, :cond_2c

    .line 586
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 587
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_3c

    .line 588
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_3e

    :cond_2c
    :goto_2c
    monitor-exit p0

    .line 594
    if-eqz p3, :cond_41

    .line 595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v3, :cond_41

    .line 596
    aget-object v4, v0, v1

    const/4 v5, 0x1

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result p2

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 590
    .end local v1    # "i":I
    .restart local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_3c
    const/4 v0, 0x0

    goto :goto_2c

    .line 573
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v2    # "ng":I
    :catchall_3e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 599
    .restart local v2    # "ng":I
    :cond_41
    return p2
.end method

.method private remove(Ljava/lang/Thread;)V
    .registers 7
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 974
    monitor-enter p0

    .line 975
    :try_start_1
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-eqz v1, :cond_7

    monitor-exit p0

    .line 976
    return-void

    .line 978
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    :try_start_8
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_29

    .line 979
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2b

    .line 980
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 983
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v2, p0, Ljava/lang/ThreadGroup;->nthreads:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2e

    :cond_29
    monitor-exit p0

    .line 988
    return-void

    .line 978
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 974
    .end local v0    # "i":I
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private remove(Ljava/lang/ThreadGroup;)V
    .registers 7
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 842
    monitor-enter p0

    .line 843
    :try_start_1
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4a

    if-eqz v1, :cond_7

    monitor-exit p0

    .line 844
    return-void

    .line 846
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    :try_start_8
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-ge v0, v1, :cond_2b

    .line 847
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_47

    .line 848
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 849
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v4, p0, Ljava/lang/ThreadGroup;->ngroups:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 856
    :cond_2b
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v1, :cond_32

    .line 857
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->notifyAll()V

    .line 859
    :cond_32
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->daemon:Z

    if-eqz v1, :cond_45

    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v1, :cond_45

    .line 860
    iget v1, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    if-nez v1, :cond_45

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-nez v1, :cond_45

    .line 862
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_4a

    :cond_45
    monitor-exit p0

    .line 865
    return-void

    .line 846
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 842
    .end local v0    # "i":I
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private stopOrSuspend(Z)Z
    .registers 8
    .param p1, "suspend"    # Z

    .prologue
    .line 699
    const/4 v3, 0x0

    .line 700
    .local v3, "suicide":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 702
    .local v4, "us":Ljava/lang/Thread;
    const/4 v0, 0x0

    .line 703
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    .line 704
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 705
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v5, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v1, v5, :cond_2e

    .line 706
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    if-ne v5, v4, :cond_19

    .line 707
    const/4 v3, 0x1

    .line 705
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 708
    :cond_19
    if-eqz p1, :cond_26

    .line 709
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->suspend()V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_23

    goto :goto_16

    .line 703
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v1    # "i":I
    :catchall_23
    move-exception v5

    monitor-exit p0

    throw v5

    .line 711
    .restart local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v1    # "i":I
    :cond_26
    :try_start_26
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->stop()V

    goto :goto_16

    .line 714
    :cond_2e
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 715
    .local v2, "ngroupsSnapshot":I
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v5, :cond_3c

    .line 716
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_23

    :cond_3c
    monitor-exit p0

    .line 719
    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v2, :cond_4d

    .line 720
    aget-object v5, v0, v1

    invoke-direct {v5, p1}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 719
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 720
    :cond_4b
    const/4 v3, 0x1

    goto :goto_48

    .line 722
    :cond_4d
    return v3
.end method


# virtual methods
.method public activeCount()I
    .registers 6

    .prologue
    .line 353
    monitor-enter p0

    .line 354
    :try_start_1
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    if-eqz v4, :cond_8

    .line 355
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 357
    :cond_8
    :try_start_8
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 358
    .local v3, "result":I
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 359
    .local v2, "ngroupsSnapshot":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_26

    .line 360
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_28

    :goto_18
    monitor-exit p0

    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v2, :cond_2b

    .line 366
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 362
    .end local v1    # "i":I
    :cond_26
    const/4 v0, 0x0

    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_18

    .line 353
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v2    # "ngroupsSnapshot":I
    .end local v3    # "result":I
    :catchall_28
    move-exception v4

    monitor-exit p0

    throw v4

    .line 368
    .restart local v1    # "i":I
    .restart local v2    # "ngroupsSnapshot":I
    .restart local v3    # "result":I
    :cond_2b
    return v3
.end method

.method public activeGroupCount()I
    .registers 6

    .prologue
    .line 487
    monitor-enter p0

    .line 488
    :try_start_1
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    if-eqz v4, :cond_8

    .line 489
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 491
    :cond_8
    :try_start_8
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 492
    .local v3, "ngroupsSnapshot":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_25

    .line 493
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_27

    :goto_16
    monitor-exit p0

    .line 498
    move v2, v3

    .line 499
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v3, :cond_2a

    .line 500
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 495
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_25
    const/4 v0, 0x0

    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_16

    .line 487
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v3    # "ngroupsSnapshot":I
    :catchall_27
    move-exception v4

    monitor-exit p0

    throw v4

    .line 502
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "ngroupsSnapshot":I
    :cond_2a
    return v2
.end method

.method add(Ljava/lang/Thread;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 898
    monitor-enter p0

    .line 899
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_e

    .line 900
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 898
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 902
    :cond_e
    :try_start_e
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    if-nez v0, :cond_2b

    .line 903
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    .line 907
    :cond_17
    :goto_17
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    aput-object p1, v0, v1

    .line 911
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 917
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_b

    monitor-exit p0

    .line 919
    return-void

    .line 904
    :cond_2b
    :try_start_2b
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    array-length v1, v1

    if-ne v0, v1, :cond_17

    .line 905
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_b

    goto :goto_17
.end method

.method addUnstarted()V
    .registers 2

    .prologue
    .line 876
    monitor-enter p0

    .line 877
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_e

    .line 878
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 876
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 880
    :cond_e
    :try_start_e
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_b

    monitor-exit p0

    .line 882
    return-void
.end method

.method public allowThreadSuspension(Z)Z
    .registers 3
    .param p1, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1089
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    .line 1090
    if-nez p1, :cond_7

    .line 1091
    invoke-static {}, Lsun/misc/VM;->unsuspendSomeThreads()V

    .line 1093
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public final checkAccess()V
    .registers 1

    .prologue
    .line 328
    return-void
.end method

.method public final destroy()V
    .registers 5

    .prologue
    .line 786
    monitor-enter p0

    .line 787
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 788
    iget-boolean v3, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v3, :cond_c

    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-lez v3, :cond_15

    .line 789
    :cond_c
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v3}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v3
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_12

    .line 786
    :catchall_12
    move-exception v3

    monitor-exit p0

    throw v3

    .line 791
    :cond_15
    :try_start_15
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 792
    .local v2, "ngroupsSnapshot":I
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_42

    .line 793
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;

    .line 797
    :goto_23
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_36

    .line 798
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    .line 799
    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 800
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    .line 801
    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 802
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_12

    :cond_36
    monitor-exit p0

    .line 805
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    if-ge v1, v2, :cond_44

    .line 806
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->destroy()V

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 795
    .end local v1    # "i":I
    :cond_42
    const/4 v0, 0x0

    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_23

    .line 808
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v1    # "i":I
    :cond_44
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_4d

    .line 809
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-direct {v3, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    .line 811
    :cond_4d
    return-void
.end method

.method public enumerate([Ljava/lang/Thread;)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/Thread;

    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 395
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/Thread;Z)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/Thread;
    .param p2, "recurse"    # Z

    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/ThreadGroup;

    .prologue
    .line 528
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 529
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;Z)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/ThreadGroup;
    .param p2, "recurse"    # Z

    .prologue
    .line 566
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result v0

    return v0
.end method

.method public final getMaxPriority()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Ljava/lang/ThreadGroup;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 174
    :cond_9
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public final interrupt()V
    .registers 5

    .prologue
    .line 647
    monitor-enter p0

    .line 648
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v1, v3, :cond_13

    .line 650
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 652
    :cond_13
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 653
    .local v2, "ngroupsSnapshot":I
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_2d

    .line 654
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_2f

    :goto_21
    monitor-exit p0

    .line 659
    const/4 v1, 0x0

    :goto_23
    if-ge v1, v2, :cond_32

    .line 660
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->interrupt()V

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 656
    :cond_2d
    const/4 v0, 0x0

    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_21

    .line 647
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v1    # "i":I
    .end local v2    # "ngroupsSnapshot":I
    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 662
    .restart local v1    # "i":I
    .restart local v2    # "ngroupsSnapshot":I
    :cond_32
    return-void
.end method

.method public final isDaemon()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    return v0
.end method

.method public declared-synchronized isDestroyed()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 211
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list()V
    .registers 3

    .prologue
    .line 997
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    .line 998
    return-void
.end method

.method list(Ljava/io/PrintStream;I)V
    .registers 8
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "indent"    # I

    .prologue
    .line 1002
    monitor-enter p0

    .line 1003
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, p2, :cond_d

    .line 1004
    :try_start_4
    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1003
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1006
    :cond_d
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1007
    add-int/lit8 p2, p2, 0x4

    .line 1008
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v1, v4, :cond_2d

    .line 1009
    const/4 v2, 0x0

    :goto_18
    if-ge v2, p2, :cond_23

    .line 1010
    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1009
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1012
    :cond_23
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1014
    :cond_2d
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 1015
    .local v3, "ngroupsSnapshot":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_47

    .line 1016
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_49

    :goto_3b
    monitor-exit p0

    .line 1021
    const/4 v1, 0x0

    :goto_3d
    if-ge v1, v3, :cond_4c

    .line 1022
    aget-object v4, v0, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1018
    :cond_47
    const/4 v0, 0x0

    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_3b

    .line 1002
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v1    # "i":I
    .end local v3    # "ngroupsSnapshot":I
    :catchall_49
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1024
    .restart local v1    # "i":I
    .restart local v3    # "ngroupsSnapshot":I
    :cond_4c
    return-void
.end method

.method public final parentOf(Ljava/lang/ThreadGroup;)Z
    .registers 3
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 306
    :goto_0
    if-eqz p1, :cond_9

    .line 307
    if-ne p1, p0, :cond_6

    .line 308
    const/4 v0, 0x1

    return v0

    .line 306
    :cond_6
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    goto :goto_0

    .line 311
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final resume()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 751
    monitor-enter p0

    .line 752
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 753
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v1, v3, :cond_13

    .line 754
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Thread;->resume()V

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 756
    :cond_13
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 757
    .local v2, "ngroupsSnapshot":I
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_2d

    .line 758
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_2f

    :goto_21
    monitor-exit p0

    .line 763
    const/4 v1, 0x0

    :goto_23
    if-ge v1, v2, :cond_32

    .line 764
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->resume()V

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 760
    :cond_2d
    const/4 v0, 0x0

    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_21

    .line 751
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v1    # "i":I
    .end local v2    # "ngroupsSnapshot":I
    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 766
    .restart local v1    # "i":I
    .restart local v2    # "ngroupsSnapshot":I
    :cond_32
    return-void
.end method

.method public final setDaemon(Z)V
    .registers 2
    .param p1, "daemon"    # Z

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 234
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->daemon:Z

    .line 235
    return-void
.end method

.method public final setMaxPriority(I)V
    .registers 6
    .param p1, "pri"    # I

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 275
    const/4 v3, 0x1

    if-ge p1, v3, :cond_8

    .line 276
    const/4 p1, 0x1

    .line 278
    :cond_8
    const/16 v3, 0xa

    if-le p1, v3, :cond_e

    .line 279
    const/16 p1, 0xa

    .line 282
    :cond_e
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_36

    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    iget v3, v3, Ljava/lang/ThreadGroup;->maxPriority:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1a
    iput v3, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 283
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 284
    .local v2, "ngroupsSnapshot":I
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_38

    .line 285
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_3a

    :goto_2a
    monitor-exit p0

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    if-ge v1, v2, :cond_3d

    .line 291
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .end local v1    # "i":I
    .end local v2    # "ngroupsSnapshot":I
    :cond_36
    move v3, p1

    .line 282
    goto :goto_1a

    .line 287
    .restart local v2    # "ngroupsSnapshot":I
    :cond_38
    const/4 v0, 0x0

    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_2a

    .line 269
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v2    # "ngroupsSnapshot":I
    :catchall_3a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 293
    .restart local v1    # "i":I
    .restart local v2    # "ngroupsSnapshot":I
    :cond_3d
    return-void
.end method

.method public final stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 624
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 625
    :cond_e
    return-void
.end method

.method public final suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 686
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 687
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    .line 688
    :cond_e
    return-void
.end method

.method threadStartFailed(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 934
    monitor-enter p0

    .line 935
    :try_start_1
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    .line 936
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 938
    return-void

    .line 934
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method threadTerminated(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 952
    monitor-enter p0

    .line 953
    :try_start_1
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    .line 955
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_b

    .line 956
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->notifyAll()V

    .line 958
    :cond_b
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_1e

    .line 959
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    if-nez v0, :cond_1e

    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-nez v0, :cond_1e

    .line 961
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    .line 964
    return-void

    .line 952
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",maxpri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1062
    iget-object v1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_a

    .line 1063
    iget-object v1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1075
    :cond_9
    :goto_9
    return-void

    .line 1066
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 1067
    .local v0, "ueh":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_14

    .line 1068
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1069
    :cond_14
    instance-of v1, p2, Ljava/lang/ThreadDeath;

    if-nez v1, :cond_9

    .line 1070
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in thread \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1071
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1071
    const-string/jumbo v3, "\" "

    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1072
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_9
.end method
