.class public Lsun/nio/fs/UnixChannelFactory$Flags;
.super Ljava/lang/Object;
.source "UnixChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixChannelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Flags"
.end annotation


# static fields
.field private static final synthetic -java-nio-file-StandardOpenOptionSwitchesValues:[I


# instance fields
.field append:Z

.field create:Z

.field createNew:Z

.field deleteOnClose:Z

.field dsync:Z

.field noFollowLinks:Z

.field read:Z

.field sync:Z

.field truncateExisting:Z

.field write:Z


# direct methods
.method private static synthetic -getjava-nio-file-StandardOpenOptionSwitchesValues()[I
    .registers 3

    sget-object v0, Lsun/nio/fs/UnixChannelFactory$Flags;->-java-nio-file-StandardOpenOptionSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lsun/nio/fs/UnixChannelFactory$Flags;->-java-nio-file-StandardOpenOptionSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/nio/file/StandardOpenOption;->values()[Ljava/nio/file/StandardOpenOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_80

    :goto_17
    :try_start_17
    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_7e

    :goto_20
    :try_start_20
    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_7c

    :goto_29
    :try_start_29
    sget-object v1, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_7a

    :goto_32
    :try_start_32
    sget-object v1, Ljava/nio/file/StandardOpenOption;->DSYNC:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_78

    :goto_3b
    :try_start_3b
    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_76

    :goto_44
    :try_start_44
    sget-object v1, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_74

    :goto_4d
    :try_start_4d
    sget-object v1, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_72

    :goto_57
    :try_start_57
    sget-object v1, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_70

    :goto_61
    :try_start_61
    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_6e

    :goto_6b
    sput-object v0, Lsun/nio/fs/UnixChannelFactory$Flags;->-java-nio-file-StandardOpenOptionSwitchesValues:[I

    return-object v0

    :catch_6e
    move-exception v1

    goto :goto_6b

    :catch_70
    move-exception v1

    goto :goto_61

    :catch_72
    move-exception v1

    goto :goto_57

    :catch_74
    move-exception v1

    goto :goto_4d

    :catch_76
    move-exception v1

    goto :goto_44

    :catch_78
    move-exception v1

    goto :goto_3b

    :catch_7a
    move-exception v1

    goto :goto_32

    :catch_7c
    move-exception v1

    goto :goto_29

    :catch_7e
    move-exception v1

    goto :goto_20

    :catch_80
    move-exception v1

    goto :goto_17
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toFlags(Ljava/util/Set;)Lsun/nio/fs/UnixChannelFactory$Flags;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;)",
            "Lsun/nio/fs/UnixChannelFactory$Flags;"
        }
    .end annotation

    .prologue
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    const/4 v5, 0x1

    .line 69
    new-instance v0, Lsun/nio/fs/UnixChannelFactory$Flags;

    invoke-direct {v0}, Lsun/nio/fs/UnixChannelFactory$Flags;-><init>()V

    .line 70
    .local v0, "flags":Lsun/nio/fs/UnixChannelFactory$Flags;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "option$iterator":Ljava/util/Iterator;
    :goto_a
    :pswitch_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/OpenOption;

    .line 71
    .local v1, "option":Ljava/nio/file/OpenOption;
    instance-of v3, v1, Ljava/nio/file/StandardOpenOption;

    if-eqz v3, :cond_4a

    .line 72
    invoke-static {}, Lsun/nio/fs/UnixChannelFactory$Flags;->-getjava-nio-file-StandardOpenOptionSwitchesValues()[I

    move-result-object v3

    check-cast v1, Ljava/nio/file/StandardOpenOption;

    .end local v1    # "option":Ljava/nio/file/OpenOption;
    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_78

    .line 83
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 73
    :pswitch_2f
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    goto :goto_a

    .line 74
    :pswitch_32
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    goto :goto_a

    .line 75
    :pswitch_35
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    goto :goto_a

    .line 76
    :pswitch_38
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->truncateExisting:Z

    goto :goto_a

    .line 77
    :pswitch_3b
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->create:Z

    goto :goto_a

    .line 78
    :pswitch_3e
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    goto :goto_a

    .line 79
    :pswitch_41
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    goto :goto_a

    .line 81
    :pswitch_44
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->sync:Z

    goto :goto_a

    .line 82
    :pswitch_47
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->dsync:Z

    goto :goto_a

    .line 87
    .restart local v1    # "option":Ljava/nio/file/OpenOption;
    :cond_4a
    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v1, v3, :cond_55

    sget v3, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-eqz v3, :cond_55

    .line 88
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->noFollowLinks:Z

    goto :goto_a

    .line 91
    :cond_55
    if-nez v1, :cond_5d

    .line 92
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 93
    :cond_5d
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v1    # "option":Ljava/nio/file/OpenOption;
    :cond_77
    return-object v0

    .line 72
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_35
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_47
        :pswitch_2f
        :pswitch_a
        :pswitch_44
        :pswitch_38
        :pswitch_32
    .end packed-switch
.end method
