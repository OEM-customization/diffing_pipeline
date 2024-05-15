.class public Ljava/util/prefs/FileSystemPreferences;
.super Ljava/util/prefs/AbstractPreferences;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/FileSystemPreferences$1;,
        Ljava/util/prefs/FileSystemPreferences$Change;,
        Ljava/util/prefs/FileSystemPreferences$NodeCreate;,
        Ljava/util/prefs/FileSystemPreferences$Put;,
        Ljava/util/prefs/FileSystemPreferences$Remove;
    }
.end annotation


# static fields
.field private static final EACCES:I = 0xd

.field private static final EAGAIN:I = 0xb

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final ERROR_CODE:I = 0x1

.field private static INIT_SLEEP_TIME:I = 0x0

.field private static final LOCK_HANDLE:I = 0x0

.field private static MAX_ATTEMPTS:I = 0x0

.field private static final USER_READ_WRITE:I = 0x180

.field private static final USER_RWX:I = 0x1c0

.field private static final USER_RWX_ALL_RX:I = 0x1ed

.field private static final USER_RW_ALL_READ:I = 0x1a4

.field private static isSystemRootModified:Z

.field private static isSystemRootWritable:Z

.field private static isUserRootModified:Z

.field private static isUserRootWritable:Z

.field static systemLockFile:Ljava/io/File;

.field static systemRoot:Ljava/util/prefs/Preferences;

.field private static systemRootDir:Ljava/io/File;

.field private static systemRootLockHandle:I

.field private static systemRootModFile:Ljava/io/File;

.field private static systemRootModTime:J

.field static userLockFile:Ljava/io/File;

.field static userRoot:Ljava/util/prefs/Preferences;

.field private static userRootDir:Ljava/io/File;

.field private static userRootLockHandle:I

.field private static userRootModFile:Ljava/io/File;

.field private static userRootModTime:J


# instance fields
.field final changeLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/prefs/FileSystemPreferences$Change;",
            ">;"
        }
    .end annotation
.end field

.field private final dir:Ljava/io/File;

.field private final isUserNode:Z

.field private lastSyncTime:J

.field nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

.field private prefsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsFile:Ljava/io/File;

.field private final tmpFile:Ljava/io/File;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .registers 2
    .param p0, "-this"    # Ljava/util/prefs/FileSystemPreferences;

    .prologue
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get10()Ljava/io/File;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get11()J
    .registers 2

    sget-wide v0, Ljava/util/prefs/FileSystemPreferences;->userRootModTime:J

    return-wide v0
.end method

.method static synthetic -get2()Z
    .registers 1

    sget-boolean v0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    return v0
.end method

.method static synthetic -get3(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;
    .registers 2
    .param p0, "-this"    # Ljava/util/prefs/FileSystemPreferences;

    .prologue
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .registers 2
    .param p0, "-this"    # Ljava/util/prefs/FileSystemPreferences;

    .prologue
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get5()Ljava/io/File;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get6()Ljava/io/File;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get7()J
    .registers 2

    sget-wide v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModTime:J

    return-wide v0
.end method

.method static synthetic -get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .registers 2
    .param p0, "-this"    # Ljava/util/prefs/FileSystemPreferences;

    .prologue
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get9()Ljava/io/File;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    return p0
.end method

.method static synthetic -set2(Z)Z
    .registers 1
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    return p0
.end method

.method static synthetic -set3(Z)Z
    .registers 1
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isUserRootWritable:Z

    return p0
.end method

.method static synthetic -set4(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .param p0, "-value"    # Ljava/io/File;

    .prologue
    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set5(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .param p0, "-value"    # Ljava/io/File;

    .prologue
    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set6(J)J
    .registers 2
    .param p0, "-value"    # J

    .prologue
    sput-wide p0, Ljava/util/prefs/FileSystemPreferences;->systemRootModTime:J

    return-wide p0
.end method

.method static synthetic -set7(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .param p0, "-value"    # Ljava/io/File;

    .prologue
    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set8(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .param p0, "-value"    # Ljava/io/File;

    .prologue
    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set9(J)J
    .registers 2
    .param p0, "-value"    # J

    .prologue
    sput-wide p0, Ljava/util/prefs/FileSystemPreferences;->userRootModTime:J

    return-wide p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;I)I
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "permission"    # I

    .prologue
    invoke-static {p0, p1}, Ljava/util/prefs/FileSystemPreferences;->chmod(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/util/prefs/FileSystemPreferences;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2()Lsun/util/logging/PlatformLogger;
    .registers 1

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3()V
    .registers 0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->syncWorld()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 86
    const/4 v0, 0x0

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    .line 240
    sput v2, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    .line 247
    sput v2, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    .line 283
    sput-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    .line 300
    sput-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    .line 423
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/util/prefs/FileSystemPreferences$1;

    invoke-direct {v1}, Ljava/util/prefs/FileSystemPreferences$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 660
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 959
    const/16 v0, 0x32

    sput v0, Ljava/util/prefs/FileSystemPreferences;->INIT_SLEEP_TIME:I

    .line 964
    const/4 v0, 0x5

    sput v0, Ljava/util/prefs/FileSystemPreferences;->MAX_ATTEMPTS:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Z)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lockFile"    # Ljava/io/File;
    .param p3, "isUserNode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 474
    const-string/jumbo v0, ""

    invoke-direct {p0, v3, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 316
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 327
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    .line 411
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 475
    iput-boolean p3, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    .line 476
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    .line 477
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    .line 478
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    .line 479
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    .line 480
    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    if-eqz v0, :cond_5a

    .line 482
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 483
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-direct {v0, p0, v3}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$NodeCreate;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 484
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_5a
    if-eqz p3, :cond_82

    .line 488
    sput-object p2, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    .line 489
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".rootmod"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    .line 494
    :goto_81
    return-void

    .line 491
    :cond_82
    sput-object p2, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    .line 492
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".rootmod"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    goto :goto_81
.end method

.method private constructor <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V
    .registers 7
    .param p1, "parent"    # Ljava/util/prefs/FileSystemPreferences;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 502
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 316
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 327
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    .line 411
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 503
    iget-boolean v0, p1, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    iput-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    .line 504
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    invoke-static {p2}, Ljava/util/prefs/FileSystemPreferences;->dirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    .line 505
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    .line 506
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    .line 507
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$4;

    invoke-direct {v0, p0}, Ljava/util/prefs/FileSystemPreferences$4;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 513
    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    if-eqz v0, :cond_5d

    .line 515
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 516
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-direct {v0, p0, v3}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$NodeCreate;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 517
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_5d
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 5
    .param p1, "user"    # Z

    .prologue
    const/4 v2, 0x0

    .line 464
    const-string/jumbo v0, ""

    invoke-direct {p0, v2, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 316
    iput-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 327
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    .line 411
    iput-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 465
    iput-boolean p1, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    .line 466
    if-eqz p1, :cond_37

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    :goto_1c
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    .line 467
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    .line 468
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    .line 469
    return-void

    .line 466
    :cond_37
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    goto :goto_1c
.end method

.method private static byteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 849
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 850
    .local v4, "len":I
    mul-int/lit8 v6, v4, 0x2

    new-array v5, v6, [B

    .line 851
    .local v5, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_b
    if-ge v1, v4, :cond_20

    .line 852
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 853
    .local v0, "c":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 854
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 856
    .end local v0    # "c":C
    :cond_20
    return-object v5
.end method

.method private checkLockFile0ErrorCode(I)V
    .registers 5
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 925
    const/16 v0, 0xd

    if-ne p1, v0, :cond_32

    .line 926
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not lock "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 927
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "User prefs."

    .line 926
    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 928
    const-string/jumbo v2, " Lock file access denied."

    .line 926
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 927
    :cond_2e
    const-string/jumbo v0, "System prefs."

    goto :goto_1b

    .line 929
    :cond_32
    const/16 v0, 0xb

    if-eq p1, v0, :cond_6c

    .line 930
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not lock "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 931
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string/jumbo v0, "User prefs. "

    .line 930
    :goto_4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 932
    const-string/jumbo v2, " Unix error code "

    .line 930
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 932
    const-string/jumbo v2, "."

    .line 930
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 933
    :cond_6c
    return-void

    .line 931
    :cond_6d
    const-string/jumbo v0, "System prefs."

    goto :goto_4f
.end method

.method private static native chmod(Ljava/lang/String;I)I
.end method

.method private static dirName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 838
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_31

    .line 839
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->isDirChar(C)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/util/prefs/FileSystemPreferences;->byteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/prefs/Base64;->byteArrayToAltBase64([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 838
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 841
    :cond_31
    return-object p0
.end method

.method private static getLogger()Lsun/util/logging/PlatformLogger;
    .registers 1

    .prologue
    .line 60
    const-string/jumbo v0, "java.util.prefs"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getSystemRoot()Ljava/util/prefs/Preferences;
    .registers 3

    .prologue
    const-class v1, Ljava/util/prefs/FileSystemPreferences;

    monitor-enter v1

    .line 150
    :try_start_3
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;

    if-nez v0, :cond_12

    .line 151
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->setupSystemRoot()V

    .line 152
    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/prefs/FileSystemPreferences;-><init>(Z)V

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;

    .line 154
    :cond_12
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getUserRoot()Ljava/util/prefs/Preferences;
    .registers 3

    .prologue
    const-class v1, Ljava/util/prefs/FileSystemPreferences;

    monitor-enter v1

    .line 89
    :try_start_3
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    if-nez v0, :cond_12

    .line 90
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->setupUserRoot()V

    .line 91
    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/prefs/FileSystemPreferences;-><init>(Z)V

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    .line 93
    :cond_12
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initCacheIfNecessary()V
    .registers 3

    .prologue
    .line 551
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 552
    return-void

    .line 555
    :cond_5
    :try_start_5
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->loadCache()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 560
    :goto_8
    return-void

    .line 556
    :catch_9
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    goto :goto_8
.end method

.method private static isDirChar(C)Z
    .registers 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 828
    const/16 v1, 0x1f

    if-le p0, v1, :cond_16

    const/16 v1, 0x7f

    if-ge p0, v1, :cond_16

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_16

    const/16 v1, 0x2e

    if-eq p0, v1, :cond_16

    const/16 v1, 0x5f

    if-eq p0, v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method private loadCache()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 571
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 572
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v4, 0x0

    .line 574
    .local v4, "newLastSyncTime":J
    :try_start_8
    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_21

    move-result-wide v4

    .line 575
    const/4 v1, 0x0

    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_f
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_16} :catch_66
    .catchall {:try_start_f .. :try_end_16} :catchall_cb

    .line 576
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_16
    invoke-static {v2, v3}, Ljava/util/prefs/XmlSupport;->importMap(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_d0
    .catchall {:try_start_16 .. :try_end_19} :catchall_cd

    .line 577
    if-eqz v2, :cond_1e

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_64
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    if-eqz v7, :cond_5f

    :try_start_20
    throw v7
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_21} :catch_21

    .line 578
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_21
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    instance-of v6, v0, Ljava/util/prefs/InvalidPreferencesFormatException;

    if-eqz v6, :cond_80

    .line 580
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid preferences format in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 581
    iget-object v8, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 580
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 582
    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    new-instance v7, Ljava/io/File;

    .line 583
    iget-object v8, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 584
    const-string/jumbo v9, "IncorrectFormatPrefs.xml"

    .line 582
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 585
    new-instance v3, Ljava/util/TreeMap;

    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5f
    :goto_5f
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 599
    iput-wide v4, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 600
    return-void

    .line 577
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_64
    move-exception v7

    goto :goto_1e

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_66
    move-exception v6

    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_67
    :try_start_67
    throw v6
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_6c
    if-eqz v1, :cond_71

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_74
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_21

    :cond_71
    :goto_71
    if-eqz v7, :cond_7f

    :try_start_73
    throw v7

    :catch_74
    move-exception v8

    if-nez v7, :cond_79

    move-object v7, v8

    goto :goto_71

    :cond_79
    if-eq v7, v8, :cond_71

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_71

    :cond_7f
    throw v6
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_80} :catch_21

    .line 586
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_80
    instance-of v6, v0, Ljava/io/FileNotFoundException;

    if-eqz v6, :cond_a6

    .line 587
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Prefs file removed in background "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 588
    iget-object v8, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_5f

    .line 592
    :cond_a6
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception while reading cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 593
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 594
    new-instance v6, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v6, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_cb
    move-exception v6

    goto :goto_6c

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_cd
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    goto :goto_6c

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_d0
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_67
.end method

.method private lockFile(Z)Z
    .registers 16
    .param p1, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 884
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v7

    .line 886
    .local v7, "usernode":Z
    const/4 v2, 0x0

    .line 887
    .local v2, "errorCode":I
    if-eqz v7, :cond_2f

    sget-object v4, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    .line 888
    .local v4, "lockFile":Ljava/io/File;
    :goto_b
    sget v10, Ljava/util/prefs/FileSystemPreferences;->INIT_SLEEP_TIME:I

    int-to-long v8, v10

    .line 889
    .local v8, "sleepTime":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    sget v10, Ljava/util/prefs/FileSystemPreferences;->MAX_ATTEMPTS:I

    if-ge v3, v10, :cond_4a

    .line 891
    if-eqz v7, :cond_32

    const/16 v5, 0x180

    .line 892
    .local v5, "perm":I
    :goto_17
    :try_start_17
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5, p1}, Ljava/util/prefs/FileSystemPreferences;->lockFile0(Ljava/lang/String;IZ)[I

    move-result-object v6

    .line 894
    .local v6, "result":[I
    const/4 v10, 0x1

    aget v2, v6, v10

    .line 895
    const/4 v10, 0x0

    aget v10, v6, v10

    if-eqz v10, :cond_3c

    .line 896
    if-eqz v7, :cond_35

    .line 897
    const/4 v10, 0x0

    aget v10, v6, v10

    sput v10, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2e} :catch_3b

    .line 901
    :goto_2e
    return v13

    .line 887
    .end local v3    # "i":I
    .end local v4    # "lockFile":Ljava/io/File;
    .end local v5    # "perm":I
    .end local v6    # "result":[I
    .end local v8    # "sleepTime":J
    :cond_2f
    sget-object v4, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    .restart local v4    # "lockFile":Ljava/io/File;
    goto :goto_b

    .line 891
    .restart local v3    # "i":I
    .restart local v8    # "sleepTime":J
    :cond_32
    const/16 v5, 0x1a4

    .restart local v5    # "perm":I
    goto :goto_17

    .line 899
    .restart local v6    # "result":[I
    :cond_35
    const/4 v10, 0x0

    :try_start_36
    aget v10, v6, v10

    sput v10, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_3b

    goto :goto_2e

    .line 903
    .end local v6    # "result":[I
    :catch_3b
    move-exception v0

    .line 908
    :cond_3c
    :try_start_3c
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_45

    .line 913
    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    .line 889
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 909
    :catch_45
    move-exception v1

    .line 910
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0, v2}, Ljava/util/prefs/FileSystemPreferences;->checkLockFile0ErrorCode(I)V

    .line 911
    return v12

    .line 915
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "perm":I
    :cond_4a
    invoke-direct {p0, v2}, Ljava/util/prefs/FileSystemPreferences;->checkLockFile0ErrorCode(I)V

    .line 916
    return v12
.end method

.method private static native lockFile0(Ljava/lang/String;IZ)[I
.end method

.method private static nodeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    .line 864
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    if-eq v6, v7, :cond_a

    .line 865
    return-object p0

    .line 866
    :cond_a
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/prefs/Base64;->altBase64ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 867
    .local v0, "a":[B
    new-instance v5, Ljava/lang/StringBuffer;

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 868
    .local v5, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v6, v0

    if-ge v2, v6, :cond_33

    .line 869
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v6, v0, v2

    and-int/lit16 v1, v6, 0xff

    .line 870
    .local v1, "highByte":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v6, v0, v3

    and-int/lit16 v4, v6, 0xff

    .line 871
    .local v4, "lowByte":I
    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v6, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1c

    .line 873
    .end local v1    # "highByte":I
    .end local v4    # "lowByte":I
    :cond_33
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private replayChanges()V
    .registers 4

    .prologue
    .line 417
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 418
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/FileSystemPreferences$Change;

    invoke-virtual {v2}, Ljava/util/prefs/FileSystemPreferences$Change;->replay()V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 419
    :cond_17
    return-void
.end method

.method private static setupSystemRoot()V
    .registers 1

    .prologue
    .line 158
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$3;

    invoke-direct {v0}, Ljava/util/prefs/FileSystemPreferences$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method private static setupUserRoot()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$2;

    invoke-direct {v0}, Ljava/util/prefs/FileSystemPreferences$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method private syncSpiPrivileged()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 770
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 771
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Node has been removed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 772
    :cond_f
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    if-nez v2, :cond_14

    .line 773
    return-void

    .line 775
    :cond_14
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v2

    if-eqz v2, :cond_5b

    sget-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    :goto_1c
    if-eqz v2, :cond_5e

    .line 776
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 777
    .local v0, "lastModifiedTime":J
    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    .line 780
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->loadCache()V

    .line 781
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->replayChanges()V

    .line 782
    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 790
    .end local v0    # "lastModifiedTime":J
    :cond_32
    :goto_32
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 791
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->writeBackCache()V

    .line 797
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 803
    .restart local v0    # "lastModifiedTime":J
    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_55

    .line 804
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    iput-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 805
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    iget-wide v4, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 807
    :cond_55
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 809
    .end local v0    # "lastModifiedTime":J
    :cond_5a
    return-void

    .line 775
    :cond_5b
    sget-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    goto :goto_1c

    .line 784
    :cond_5e
    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_32

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_32

    .line 787
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 788
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->replayChanges()V

    goto :goto_32
.end method

.method private static syncWorld()V
    .registers 6

    .prologue
    .line 437
    const-class v4, Ljava/util/prefs/FileSystemPreferences;

    monitor-enter v4

    .line 438
    :try_start_3
    sget-object v2, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    .line 439
    .local v2, "userRt":Ljava/util/prefs/Preferences;
    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_13

    .local v1, "systemRt":Ljava/util/prefs/Preferences;
    monitor-exit v4

    .line 443
    if-eqz v2, :cond_d

    .line 444
    :try_start_a
    invoke-virtual {v2}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_d
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_a .. :try_end_d} :catch_16

    .line 450
    :cond_d
    :goto_d
    if-eqz v1, :cond_12

    .line 451
    :try_start_f
    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_12
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_f .. :try_end_12} :catch_33

    .line 455
    :cond_12
    :goto_12
    return-void

    .line 437
    .end local v1    # "systemRt":Ljava/util/prefs/Preferences;
    :catchall_13
    move-exception v3

    monitor-exit v4

    throw v3

    .line 445
    .restart local v1    # "systemRt":Ljava/util/prefs/Preferences;
    :catch_16
    move-exception v0

    .line 446
    .local v0, "e":Ljava/util/prefs/BackingStoreException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t flush user prefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_d

    .line 452
    .end local v0    # "e":Ljava/util/prefs/BackingStoreException;
    :catch_33
    move-exception v0

    .line 453
    .restart local v0    # "e":Ljava/util/prefs/BackingStoreException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t flush system prefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private unlockFile()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 972
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v3

    .line 973
    .local v3, "usernode":Z
    if-eqz v3, :cond_37

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    .line 974
    .local v0, "lockFile":Ljava/io/File;
    :goto_9
    if-eqz v3, :cond_3a

    sget v1, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    .line 975
    .local v1, "lockHandle":I
    :goto_d
    if-nez v1, :cond_41

    .line 976
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlock: zero lockHandle for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 977
    if-eqz v3, :cond_3d

    const-string/jumbo v4, "user"

    .line 976
    :goto_24
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 977
    const-string/jumbo v6, " preferences.)"

    .line 976
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 978
    return-void

    .line 973
    .end local v0    # "lockFile":Ljava/io/File;
    .end local v1    # "lockHandle":I
    :cond_37
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    .restart local v0    # "lockFile":Ljava/io/File;
    goto :goto_9

    .line 974
    :cond_3a
    sget v1, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    .restart local v1    # "lockHandle":I
    goto :goto_d

    .line 977
    :cond_3d
    const-string/jumbo v4, "system"

    goto :goto_24

    .line 980
    :cond_41
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->unlockFile0(I)I

    move-result v2

    .line 981
    .local v2, "result":I
    if-eqz v2, :cond_ba

    .line 982
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not drop file-lock on "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 983
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v4

    if-eqz v4, :cond_b2

    const-string/jumbo v4, "user"

    .line 982
    :goto_60
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 983
    const-string/jumbo v6, " preferences."

    .line 982
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 984
    const-string/jumbo v6, " Unix error code "

    .line 982
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 984
    const-string/jumbo v6, "."

    .line 982
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 985
    const/16 v4, 0xd

    if-ne v2, v4, :cond_ba

    .line 986
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not unlock"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 987
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v4

    if-eqz v4, :cond_b6

    const-string/jumbo v4, "User prefs."

    .line 986
    :goto_9f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 988
    const-string/jumbo v6, " Lock file access denied."

    .line 986
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 983
    :cond_b2
    const-string/jumbo v4, "system"

    goto :goto_60

    .line 987
    :cond_b6
    const-string/jumbo v4, "System prefs."

    goto :goto_9f

    .line 990
    :cond_ba
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 991
    sput v7, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    .line 995
    :goto_c2
    return-void

    .line 993
    :cond_c3
    sput v7, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    goto :goto_c2
.end method

.method private static native unlockFile0(I)I
.end method

.method private writeBackCache()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 614
    :try_start_0
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$5;

    invoke-direct {v1, p0}, Ljava/util/prefs/FileSystemPreferences$5;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    .line 613
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_8} :catch_9

    .line 637
    return-void

    .line 634
    :catch_9
    move-exception v0

    .line 635
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/BackingStoreException;

    throw v1
.end method


# virtual methods
.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 663
    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/FileSystemPreferences;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V

    return-object v0
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 646
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$6;

    invoke-direct {v0, p0}, Ljava/util/prefs/FileSystemPreferences$6;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    .line 645
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 813
    return-void

    .line 814
    :cond_7
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->sync()V

    .line 815
    return-void
.end method

.method protected flushSpi()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 819
    return-void
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    .line 533
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isUserNode()Z
    .registers 2

    .prologue
    .line 522
    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    return v0
.end method

.method protected keysSpi()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    .line 641
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    .line 527
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    new-instance v1, Ljava/util/prefs/FileSystemPreferences$Put;

    invoke-direct {v1, p0, p1, p2}, Ljava/util/prefs/FileSystemPreferences$Put;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    return-void
.end method

.method public removeNode()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    :goto_8
    monitor-enter v0

    .line 669
    const/4 v1, 0x0

    :try_start_a
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->lockFile(Z)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 670
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    const-string/jumbo v2, "Couldn\'t get file lock."

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_19

    .line 667
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1c
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    goto :goto_8

    .line 672
    :cond_1f
    :try_start_1f
    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->removeNode()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_27

    .line 674
    :try_start_22
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_19

    monitor-exit v0

    .line 677
    return-void

    .line 673
    :catchall_27
    move-exception v1

    .line 674
    :try_start_28
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    .line 673
    throw v1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_19
.end method

.method protected removeNodeSpi()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 685
    :try_start_0
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$7;

    invoke-direct {v1, p0}, Ljava/util/prefs/FileSystemPreferences$7;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    .line 684
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_8} :catch_9

    .line 714
    return-void

    .line 711
    :catch_9
    move-exception v0

    .line 712
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/BackingStoreException;

    throw v1
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    .line 538
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    new-instance v1, Ljava/util/prefs/FileSystemPreferences$Remove;

    invoke-direct {v1, p0, p1}, Ljava/util/prefs/FileSystemPreferences$Remove;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-void
.end method

.method public declared-synchronized sync()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 717
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v2

    .line 720
    .local v2, "userNode":Z
    if-eqz v2, :cond_27

    .line 721
    const/4 v1, 0x0

    .line 727
    :goto_8
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v3, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    move-object v4, v3

    :goto_11
    monitor-enter v4
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_24

    .line 728
    :try_start_12
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->lockFile(Z)Z

    move-result v3

    if-nez v3, :cond_30

    .line 729
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    const-string/jumbo v5, "Couldn\'t get file lock."

    invoke-direct {v3, v5}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_21

    .line 727
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit v4

    throw v3
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_24

    .end local v2    # "userNode":Z
    :catchall_24
    move-exception v3

    monitor-exit p0

    throw v3

    .line 725
    .restart local v2    # "userNode":Z
    :cond_27
    :try_start_27
    sget-boolean v3, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    xor-int/lit8 v1, v3, 0x1

    .local v1, "shared":Z
    goto :goto_8

    .line 727
    .end local v1    # "shared":Z
    :cond_2c
    sget-object v3, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    move-object v4, v3

    goto :goto_11

    .line 732
    :cond_30
    :try_start_30
    new-instance v3, Ljava/util/prefs/FileSystemPreferences$8;

    invoke-direct {v3, p0}, Ljava/util/prefs/FileSystemPreferences$8;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    .line 731
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_21

    .line 746
    .local v0, "newModTime":Ljava/lang/Long;
    :try_start_3b
    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->sync()V

    .line 747
    new-instance v3, Ljava/util/prefs/FileSystemPreferences$9;

    invoke-direct {v3, p0, v0}, Ljava/util/prefs/FileSystemPreferences$9;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/Long;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_4c

    .line 760
    :try_start_46
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_21

    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_24

    monitor-exit p0

    .line 763
    return-void

    .line 759
    :catchall_4c
    move-exception v3

    .line 760
    :try_start_4d
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    .line 759
    throw v3
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_21
.end method

.method protected syncSpi()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->syncSpiPrivileged()V

    .line 767
    return-void
.end method
