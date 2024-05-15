.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final greylist-max-r mainThreadGroup:Ljava/lang/ThreadGroup;

.field static final greylist systemThreadGroup:Ljava/lang/ThreadGroup;


# instance fields
.field greylist-max-o daemon:Z

.field greylist-max-o destroyed:Z

.field greylist groups:[Ljava/lang/ThreadGroup;

.field greylist-max-o maxPriority:I

.field greylist-max-o nUnstartedThreads:I

.field greylist-max-r name:Ljava/lang/String;

.field greylist ngroups:I

.field greylist-max-o nthreads:I

.field private final greylist parent:Ljava/lang/ThreadGroup;

.field greylist-max-o threads:[Ljava/lang/Thread;

.field greylist-max-o vmAllowSuspension:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    sput-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    .line 62
    new-instance v1, Ljava/lang/ThreadGroup;

    const-string v2, "main"

    invoke-direct {v1, v0, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    sput-object v1, Ljava/lang/ThreadGroup;->mainThreadGroup:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 83
    const-string v0, "system"

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

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 4
    .param p1, "parent"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .line 123
    invoke-static {p1}, Ljava/lang/ThreadGroup;->checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 5
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "parent"    # Ljava/lang/ThreadGroup;
    .param p3, "name"    # Ljava/lang/String;

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

.method private final greylist-max-o add(Ljava/lang/ThreadGroup;)V
    .registers 5
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .line 824
    monitor-enter p0

    .line 825
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v0, :cond_2a

    .line 828
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-nez v0, :cond_f

    .line 829
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    goto :goto_1e

    .line 830
    :cond_f
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    array-length v2, v0

    if-ne v1, v2, :cond_1e

    .line 831
    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    .line 833
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    aput-object p1, v0, v1

    .line 837
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 838
    monitor-exit p0

    .line 839
    return-void

    .line 826
    :cond_2a
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local p0    # "this":Ljava/lang/ThreadGroup;
    .end local p1    # "g":Ljava/lang/ThreadGroup;
    throw v0

    .line 838
    .restart local p0    # "this":Ljava/lang/ThreadGroup;
    .restart local p1    # "g":Ljava/lang/ThreadGroup;
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private static greylist-max-o checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;
    .registers 2
    .param p0, "parent"    # Ljava/lang/ThreadGroup;

    .line 141
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o enumerate([Ljava/lang/Thread;IZ)I
    .registers 10
    .param p1, "list"    # [Ljava/lang/Thread;
    .param p2, "n"    # I
    .param p3, "recurse"    # Z

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "ngroupsSnapshot":I
    const/4 v1, 0x0

    .line 444
    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    .line 445
    :try_start_3
    iget-boolean v2, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v2, :cond_a

    .line 446
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 448
    :cond_a
    iget v2, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 449
    .local v2, "nt":I
    array-length v3, p1

    sub-int/2addr v3, p2

    if-le v2, v3, :cond_13

    .line 450
    array-length v3, p1

    sub-int v2, v3, p2

    .line 452
    :cond_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_30

    .line 453
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_53

    if-eqz v4, :cond_2d

    .line 454
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "n":I
    .local v4, "n":I
    :try_start_22
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v3

    aput-object v5, p1, p2
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2a

    move p2, v4

    goto :goto_2d

    .line 465
    .end local v2    # "nt":I
    .end local v3    # "i":I
    :catchall_2a
    move-exception v2

    move p2, v4

    goto :goto_54

    .line 452
    .end local v4    # "n":I
    .restart local v2    # "nt":I
    .restart local v3    # "i":I
    .restart local p2    # "n":I
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 457
    .end local v3    # "i":I
    :cond_30
    if-eqz p3, :cond_42

    .line 458
    :try_start_32
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    move v0, v3

    .line 459
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_41

    .line 460
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ThreadGroup;

    move-object v1, v3

    goto :goto_42

    .line 462
    :cond_41
    const/4 v1, 0x0

    .line 465
    .end local v2    # "nt":I
    :cond_42
    :goto_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_53

    .line 466
    if-eqz p3, :cond_52

    .line 467
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    if-ge v2, v0, :cond_52

    .line 468
    aget-object v3, v1, v2

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result p2

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 471
    .end local v2    # "i":I
    :cond_52
    return p2

    .line 465
    :catchall_53
    move-exception v2

    :goto_54
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method private greylist-max-o enumerate([Ljava/lang/ThreadGroup;IZ)I
    .registers 9
    .param p1, "list"    # [Ljava/lang/ThreadGroup;
    .param p2, "n"    # I
    .param p3, "recurse"    # Z

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "ngroupsSnapshot":I
    const/4 v1, 0x0

    .line 578
    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    .line 579
    :try_start_3
    iget-boolean v2, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 580
    monitor-exit p0

    return v3

    .line 582
    :cond_a
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 583
    .local v2, "ng":I
    array-length v4, p1

    sub-int/2addr v4, p2

    if-le v2, v4, :cond_13

    .line 584
    array-length v4, p1

    sub-int v2, v4, p2

    .line 586
    :cond_13
    if-lez v2, :cond_1b

    .line 587
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    add-int/2addr p2, v2

    .line 590
    :cond_1b
    if-eqz p3, :cond_2d

    .line 591
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    move v0, v3

    .line 592
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_2c

    .line 593
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ThreadGroup;

    move-object v1, v3

    goto :goto_2d

    .line 595
    :cond_2c
    const/4 v1, 0x0

    .line 598
    .end local v2    # "ng":I
    :cond_2d
    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_3e

    .line 599
    if-eqz p3, :cond_3d

    .line 600
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v0, :cond_3d

    .line 601
    aget-object v3, v1, v2

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result p2

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 604
    .end local v2    # "i":I
    :cond_3d
    return p2

    .line 598
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method private greylist-max-o remove(Ljava/lang/Thread;)V
    .registers 6
    .param p1, "t"    # Ljava/lang/Thread;

    .line 979
    monitor-enter p0

    .line 980
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_7

    .line 981
    monitor-exit p0

    return-void

    .line 983
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_27

    .line 984
    iget-object v2, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v3, v2, v0

    if-ne v3, p1, :cond_24

    .line 985
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v2, p0, Ljava/lang/ThreadGroup;->nthreads:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 989
    goto :goto_27

    .line 983
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 992
    .end local v0    # "i":I
    :cond_27
    :goto_27
    monitor-exit p0

    .line 993
    return-void

    .line 992
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method private greylist-max-o remove(Ljava/lang/ThreadGroup;)V
    .registers 6
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .line 847
    monitor-enter p0

    .line 848
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_7

    .line 849
    monitor-exit p0

    return-void

    .line 851
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-ge v0, v1, :cond_27

    .line 852
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    aget-object v3, v2, v0

    if-ne v3, p1, :cond_24

    .line 853
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 854
    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 858
    goto :goto_27

    .line 851
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 861
    .end local v0    # "i":I
    :cond_27
    :goto_27
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_2e

    .line 862
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 864
    :cond_2e
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    if-eqz v0, :cond_41

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_41

    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    if-nez v0, :cond_41

    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-nez v0, :cond_41

    .line 867
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V

    .line 869
    :cond_41
    monitor-exit p0

    .line 870
    return-void

    .line 869
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_43

    throw v0
.end method

.method private greylist-max-o stopOrSuspend(Z)Z
    .registers 8
    .param p1, "suspend"    # Z

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "suicide":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 707
    .local v1, "us":Ljava/lang/Thread;
    const/4 v2, 0x0

    .line 708
    .local v2, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    .line 709
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 710
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v3, v4, :cond_27

    .line 711
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v4, v3

    if-ne v5, v1, :cond_17

    .line 712
    const/4 v0, 0x1

    goto :goto_24

    .line 713
    :cond_17
    if-eqz p1, :cond_1f

    .line 714
    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->suspend()V

    goto :goto_24

    .line 716
    :cond_1f
    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->stop()V

    .line 710
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 719
    .end local v3    # "i":I
    :cond_27
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 720
    .local v3, "ngroupsSnapshot":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_34

    .line 721
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/ThreadGroup;

    move-object v2, v4

    .line 723
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_4b

    .line 724
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    if-ge v4, v3, :cond_4a

    .line 725
    aget-object v5, v2, v4

    invoke-direct {v5, p1}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v5

    if-nez v5, :cond_45

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    const/4 v5, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v5, 0x1

    :goto_46
    move v0, v5

    .line 724
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 727
    .end local v4    # "i":I
    :cond_4a
    return v0

    .line 723
    .end local v3    # "ngroupsSnapshot":I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3
.end method


# virtual methods
.method public whitelist test-api activeCount()I
    .registers 6

    .line 358
    monitor-enter p0

    .line 359
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_8

    .line 360
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 362
    :cond_8
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 363
    .local v0, "result":I
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 364
    .local v1, "ngroupsSnapshot":I
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v2, :cond_17

    .line 365
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/ThreadGroup;

    .local v2, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_18

    .line 367
    .end local v2    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_17
    const/4 v2, 0x0

    .line 369
    .restart local v2    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_27

    .line 370
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v1, :cond_26

    .line 371
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 373
    .end local v3    # "i":I
    :cond_26
    return v0

    .line 369
    .end local v0    # "result":I
    .end local v1    # "ngroupsSnapshot":I
    .end local v2    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public whitelist test-api activeGroupCount()I
    .registers 6

    .line 492
    monitor-enter p0

    .line 493
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_8

    .line 494
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 496
    :cond_8
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 497
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_15

    .line 498
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_16

    .line 500
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_15
    const/4 v1, 0x0

    .line 502
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_26

    .line 503
    move v2, v0

    .line 504
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v0, :cond_25

    .line 505
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 507
    .end local v3    # "i":I
    :cond_25
    return v2

    .line 502
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v2    # "n":I
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method greylist-max-r add(Ljava/lang/Thread;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Thread;

    .line 903
    monitor-enter p0

    .line 904
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v0, :cond_30

    .line 907
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    if-nez v0, :cond_f

    .line 908
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    goto :goto_1e

    .line 909
    :cond_f
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    array-length v2, v0

    if-ne v1, v2, :cond_1e

    .line 910
    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    .line 912
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    aput-object p1, v0, v1

    .line 916
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 922
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 923
    monitor-exit p0

    .line 924
    return-void

    .line 905
    :cond_30
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local p0    # "this":Ljava/lang/ThreadGroup;
    .end local p1    # "t":Ljava/lang/Thread;
    throw v0

    .line 923
    .restart local p0    # "this":Ljava/lang/ThreadGroup;
    .restart local p1    # "t":Ljava/lang/Thread;
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    throw v0
.end method

.method greylist-max-o addUnstarted()V
    .registers 2

    .line 881
    monitor-enter p0

    .line 882
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v0, :cond_d

    .line 885
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 886
    monitor-exit p0

    .line 887
    return-void

    .line 883
    :cond_d
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local p0    # "this":Ljava/lang/ThreadGroup;
    throw v0

    .line 886
    .restart local p0    # "this":Ljava/lang/ThreadGroup;
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist test-api allowThreadSuspension(Z)Z
    .registers 3
    .param p1, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1094
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    .line 1095
    if-nez p1, :cond_7

    .line 1096
    invoke-static {}, Lsun/misc/VM;->unsuspendSomeThreads()V

    .line 1098
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api checkAccess()V
    .registers 1

    .line 333
    return-void
.end method

.method public final whitelist test-api destroy()V
    .registers 5

    .line 791
    monitor-enter p0

    .line 792
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 793
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v0, :cond_3f

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-gtz v0, :cond_3f

    .line 796
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 797
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_19

    .line 798
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_1a

    .line 800
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_19
    const/4 v1, 0x0

    .line 802
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_1a
    iget-object v2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v2, :cond_2b

    .line 803
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    .line 804
    const/4 v2, 0x0

    iput v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 805
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    .line 806
    iput v2, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 807
    iput-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    .line 809
    :cond_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_45

    .line 810
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    if-ge v2, v0, :cond_37

    .line 811
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->destroy()V

    .line 810
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 813
    .end local v2    # "i":I
    :cond_37
    iget-object v2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v2, :cond_3e

    .line 814
    invoke-direct {v2, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    .line 816
    :cond_3e
    return-void

    .line 794
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local p0    # "this":Ljava/lang/ThreadGroup;
    throw v0

    .line 809
    .restart local p0    # "this":Ljava/lang/ThreadGroup;
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_45

    throw v0
.end method

.method public whitelist test-api enumerate([Ljava/lang/Thread;)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/Thread;

    .line 399
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 400
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api enumerate([Ljava/lang/Thread;Z)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/Thread;
    .param p2, "recurse"    # Z

    .line 437
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api enumerate([Ljava/lang/ThreadGroup;)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/ThreadGroup;

    .line 533
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 534
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api enumerate([Ljava/lang/ThreadGroup;Z)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/ThreadGroup;
    .param p2, "recurse"    # Z

    .line 571
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 572
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getMaxPriority()I
    .registers 2

    .line 188
    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    return v0
.end method

.method public final whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getParent()Ljava/lang/ThreadGroup;
    .registers 2

    .line 172
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 174
    :cond_7
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public final whitelist test-api interrupt()V
    .registers 5

    .line 652
    monitor-enter p0

    .line 653
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_13

    .line 655
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 657
    .end local v0    # "i":I
    :cond_13
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 658
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_20

    .line 659
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_21

    .line 661
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_20
    const/4 v1, 0x0

    .line 663
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2e

    .line 664
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-ge v2, v0, :cond_2d

    .line 665
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->interrupt()V

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 667
    .end local v2    # "i":I
    :cond_2d
    return-void

    .line 663
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public final whitelist test-api isDaemon()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    return v0
.end method

.method public declared-synchronized whitelist test-api isDestroyed()Z
    .registers 2

    monitor-enter p0

    .line 211
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 211
    .end local p0    # "this":Ljava/lang/ThreadGroup;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api list()V
    .registers 3

    .line 1002
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    .line 1003
    return-void
.end method

.method greylist-max-o list(Ljava/io/PrintStream;I)V
    .registers 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "indent"    # I

    .line 1007
    monitor-enter p0

    .line 1008
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    if-ge v0, p2, :cond_c

    .line 1009
    :try_start_4
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1011
    .end local v0    # "j":I
    :cond_c
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1012
    add-int/lit8 p2, p2, 0x4

    .line 1013
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_2b

    .line 1014
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_17
    if-ge v1, p2, :cond_21

    .line 1015
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1014
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1017
    .end local v1    # "j":I
    :cond_21
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1019
    .end local v0    # "i":I
    :cond_2b
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 1020
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_38

    .line 1021
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_39

    .line 1023
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_38
    const/4 v1, 0x0

    .line 1025
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_46

    .line 1026
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    if-ge v2, v0, :cond_45

    .line 1027
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    .line 1026
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1029
    .end local v2    # "i":I
    :cond_45
    return-void

    .line 1025
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public final whitelist test-api parentOf(Ljava/lang/ThreadGroup;)Z
    .registers 3
    .param p1, "g"    # Ljava/lang/ThreadGroup;

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

.method public final whitelist test-api resume()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    monitor-enter p0

    .line 757
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 758
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_13

    .line 759
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->resume()V

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 761
    .end local v0    # "i":I
    :cond_13
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 762
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_20

    .line 763
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_21

    .line 765
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_20
    const/4 v1, 0x0

    .line 767
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2e

    .line 768
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-ge v2, v0, :cond_2d

    .line 769
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->resume()V

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 771
    .end local v2    # "i":I
    :cond_2d
    return-void

    .line 767
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public final whitelist test-api setDaemon(Z)V
    .registers 2
    .param p1, "daemon"    # Z

    .line 233
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 234
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->daemon:Z

    .line 235
    return-void
.end method

.method public final whitelist test-api setMaxPriority(I)V
    .registers 6
    .param p1, "pri"    # I

    .line 267
    monitor-enter p0

    .line 268
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 274
    const/4 v0, 0x1

    if-ge p1, v0, :cond_8

    .line 275
    const/4 p1, 0x1

    .line 277
    :cond_8
    const/16 v0, 0xa

    if-le p1, v0, :cond_e

    .line 278
    const/16 p1, 0xa

    .line 282
    :cond_e
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_19

    iget v0, v0, Ljava/lang/ThreadGroup;->maxPriority:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, p1

    :goto_1a
    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 283
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 284
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_29

    .line 285
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_2a

    .line 287
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_29
    const/4 v1, 0x0

    .line 289
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_37

    .line 290
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v0, :cond_36

    .line 291
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 293
    .end local v2    # "i":I
    :cond_36
    return-void

    .line 289
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public final whitelist test-api stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 629
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 630
    :cond_e
    return-void
.end method

.method public final whitelist test-api suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 691
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 692
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    .line 693
    :cond_e
    return-void
.end method

.method greylist-max-o threadStartFailed(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .line 939
    monitor-enter p0

    .line 940
    :try_start_1
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    .line 941
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 942
    monitor-exit p0

    .line 943
    return-void

    .line 942
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-r threadTerminated(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .line 957
    monitor-enter p0

    .line 958
    :try_start_1
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    .line 960
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_b

    .line 961
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 963
    :cond_b
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_1e

    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    if-nez v0, :cond_1e

    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-nez v0, :cond_1e

    .line 966
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V

    .line 968
    :cond_1e
    monitor-exit p0

    .line 969
    return-void

    .line 968
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",maxpri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1067
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_8

    .line 1068
    invoke-virtual {v0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 1071
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 1072
    .local v0, "ueh":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_12

    .line 1073
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 1074
    :cond_12
    instance-of v1, p2, Ljava/lang/ThreadDeath;

    if-nez v1, :cond_3a

    .line 1075
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in thread \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1075
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1077
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1080
    .end local v0    # "ueh":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_3a
    :goto_3a
    return-void
.end method
