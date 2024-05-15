.class Lsun/nio/fs/UnixFileModeAttribute;
.super Ljava/lang/Object;
.source "UnixFileModeAttribute.java"


# static fields
.field private static final synthetic -java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

.field static final ALL_PERMISSIONS:I

.field static final ALL_READWRITE:I

.field static final TEMPFILE_PERMISSIONS:I


# direct methods
.method private static synthetic -getjava-nio-file-attribute-PosixFilePermissionSwitchesValues()[I
    .registers 3

    sget-object v0, Lsun/nio/fs/UnixFileModeAttribute;->-java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lsun/nio/fs/UnixFileModeAttribute;->-java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/nio/file/attribute/PosixFilePermission;->values()[Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_74

    :goto_17
    :try_start_17
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_72

    :goto_20
    :try_start_20
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_70

    :goto_29
    :try_start_29
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_6e

    :goto_32
    :try_start_32
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_6c

    :goto_3b
    :try_start_3b
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_6a

    :goto_44
    :try_start_44
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_68

    :goto_4d
    :try_start_4d
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_66

    :goto_57
    :try_start_57
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_64

    :goto_61
    sput-object v0, Lsun/nio/fs/UnixFileModeAttribute;->-java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

    return-object v0

    :catch_64
    move-exception v1

    goto :goto_61

    :catch_66
    move-exception v1

    goto :goto_57

    :catch_68
    move-exception v1

    goto :goto_4d

    :catch_6a
    move-exception v1

    goto :goto_44

    :catch_6c
    move-exception v1

    goto :goto_3b

    :catch_6e
    move-exception v1

    goto :goto_32

    :catch_70
    move-exception v1

    goto :goto_29

    :catch_72
    move-exception v1

    goto :goto_20

    :catch_74
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    .line 34
    sget v1, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    .line 33
    or-int/2addr v0, v1

    .line 34
    sget v1, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    .line 33
    or-int/2addr v0, v1

    .line 34
    sget v1, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    .line 33
    or-int/2addr v0, v1

    .line 35
    sget v1, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    .line 33
    or-int/2addr v0, v1

    .line 35
    sget v1, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    .line 33
    or-int/2addr v0, v1

    .line 35
    sget v1, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    .line 33
    or-int/2addr v0, v1

    .line 32
    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->ALL_PERMISSIONS:I

    .line 38
    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    .line 39
    sget v1, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    .line 38
    or-int/2addr v0, v1

    .line 39
    sget v1, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    .line 38
    or-int/2addr v0, v1

    .line 40
    sget v1, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    .line 38
    or-int/2addr v0, v1

    .line 40
    sget v1, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    .line 38
    or-int/2addr v0, v1

    .line 37
    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 43
    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    .line 42
    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->TEMPFILE_PERMISSIONS:I

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static varargs toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I
    .registers 8
    .param p0, "defaultMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    move v1, p0

    .line 71
    .local v1, "mode":I
    const/4 v3, 0x0

    array-length v5, p1

    move v4, v3

    :goto_4
    if-ge v4, v5, :cond_53

    aget-object v0, p1, v4

    .line 72
    .local v0, "attr":Ljava/nio/file/attribute/FileAttribute;, "Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "posix:permissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string/jumbo v3, "unix:permissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_45

    .line 74
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    const-string/jumbo v5, "\' not supported as initial attribute"

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_45
    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {v3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v1

    .line 71
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_4

    .line 79
    .end local v0    # "attr":Ljava/nio/file/attribute/FileAttribute;, "Ljava/nio/file/attribute/FileAttribute<*>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_53
    return v1
.end method

.method static toUnixMode(Ljava/util/Set;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const/4 v0, 0x0

    .line 50
    .local v0, "mode":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "perm$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/PosixFilePermission;

    .line 51
    .local v1, "perm":Ljava/nio/file/attribute/PosixFilePermission;
    if-nez v1, :cond_19

    .line 52
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 53
    :cond_19
    invoke-static {}, Lsun/nio/fs/UnixFileModeAttribute;->-getjava-nio-file-attribute-PosixFilePermissionSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4c

    goto :goto_5

    .line 59
    :pswitch_27
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    or-int/2addr v0, v3

    goto :goto_5

    .line 54
    :pswitch_2b
    sget v3, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    or-int/2addr v0, v3

    goto :goto_5

    .line 55
    :pswitch_2f
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v3

    goto :goto_5

    .line 56
    :pswitch_33
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v3

    goto :goto_5

    .line 57
    :pswitch_37
    sget v3, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    or-int/2addr v0, v3

    goto :goto_5

    .line 58
    :pswitch_3b
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    or-int/2addr v0, v3

    goto :goto_5

    .line 60
    :pswitch_3f
    sget v3, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    or-int/2addr v0, v3

    goto :goto_5

    .line 61
    :pswitch_43
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    or-int/2addr v0, v3

    goto :goto_5

    .line 62
    :pswitch_47
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    or-int/2addr v0, v3

    goto :goto_5

    .line 65
    .end local v1    # "perm":Ljava/nio/file/attribute/PosixFilePermission;
    :cond_4b
    return v0

    .line 53
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_37
        :pswitch_3b
        :pswitch_47
        :pswitch_3f
        :pswitch_43
        :pswitch_33
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method
