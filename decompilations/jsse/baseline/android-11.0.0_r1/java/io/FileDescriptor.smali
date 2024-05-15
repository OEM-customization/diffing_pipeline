.class public final Ljava/io/FileDescriptor;
.super Ljava/lang/Object;
.source "FileDescriptor.java"


# static fields
.field public static final blacklist NO_OWNER:J

.field public static final whitelist core-platform-api test-api err:Ljava/io/FileDescriptor;

.field public static final whitelist core-platform-api test-api in:Ljava/io/FileDescriptor;

.field public static final whitelist core-platform-api test-api out:Ljava/io/FileDescriptor;


# instance fields
.field private greylist descriptor:I

.field private blacklist ownerId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 85
    new-instance v0, Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/io/FileDescriptor;-><init>(I)V

    sput-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    .line 93
    new-instance v0, Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/io/FileDescriptor;-><init>(I)V

    sput-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    .line 102
    new-instance v0, Ljava/io/FileDescriptor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/FileDescriptor;-><init>(I)V

    sput-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 237
    new-instance v0, Ljava/io/FileDescriptor$1;

    invoke-direct {v0}, Ljava/io/FileDescriptor$1;-><init>()V

    invoke-static {v0}, Lsun/misc/SharedSecrets;->setJavaIOFileDescriptorAccess(Lsun/misc/JavaIOFileDescriptorAccess;)V

    .line 256
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/io/FileDescriptor;->ownerId:J

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 72
    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "descriptor"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/io/FileDescriptor;->ownerId:J

    .line 75
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 76
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/io/FileDescriptor;)I
    .registers 2
    .param p0, "x0"    # Ljava/io/FileDescriptor;

    .line 49
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    return v0
.end method

.method static synthetic blacklist access$002(Ljava/io/FileDescriptor;I)I
    .registers 2
    .param p0, "x0"    # Ljava/io/FileDescriptor;
    .param p1, "x1"    # I

    .line 49
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    return p1
.end method

.method private static native greylist-max-o isSocket(I)Z
.end method


# virtual methods
.method public blacklist cloneForFork()V
    .registers 3

    .line 181
    :try_start_0
    sget v0, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    .line 182
    .local v0, "newDescriptor":I
    iput v0, p0, Ljava/io/FileDescriptor;->descriptor:I
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_9} :catch_b

    .line 185
    .end local v0    # "newDescriptor":I
    nop

    .line 186
    return-void

    .line 183
    :catch_b
    move-exception v0

    .line 184
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final greylist core-platform-api getInt$()I
    .registers 2

    .line 156
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    return v0
.end method

.method public blacklist getOwnerId$()J
    .registers 3

    .line 196
    iget-wide v0, p0, Ljava/io/FileDescriptor;->ownerId:J

    return-wide v0
.end method

.method public greylist isSocket$()Z
    .registers 2

    .line 231
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    invoke-static {v0}, Ljava/io/FileDescriptor;->isSocket(I)Z

    move-result v0

    return v0
.end method

.method public blacklist release$()Ljava/io/FileDescriptor;
    .registers 4

    .line 217
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 218
    .local v0, "result":Ljava/io/FileDescriptor;
    iget v1, p0, Ljava/io/FileDescriptor;->descriptor:I

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 219
    iget-wide v1, p0, Ljava/io/FileDescriptor;->ownerId:J

    iput-wide v1, v0, Ljava/io/FileDescriptor;->ownerId:J

    .line 220
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 221
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/io/FileDescriptor;->ownerId:J

    .line 222
    return-object v0
.end method

.method public final greylist core-platform-api setInt$(I)V
    .registers 2
    .param p1, "fd"    # I

    .line 166
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 167
    return-void
.end method

.method public blacklist setOwnerId$(J)V
    .registers 3
    .param p1, "newOwnerId"    # J

    .line 209
    iput-wide p1, p0, Ljava/io/FileDescriptor;->ownerId:J

    .line 210
    return-void
.end method

.method public native whitelist core-platform-api test-api sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api valid()Z
    .registers 3

    .line 112
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
