.class Lsun/nio/fs/UnixFileAttributeViews$Unix;
.super Lsun/nio/fs/UnixFileAttributeViews$Posix;
.source "UnixFileAttributeViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributeViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Unix"
.end annotation


# static fields
.field private static final CTIME_NAME:Ljava/lang/String; = "ctime"

.field private static final DEV_NAME:Ljava/lang/String; = "dev"

.field private static final GID_NAME:Ljava/lang/String; = "gid"

.field private static final INO_NAME:Ljava/lang/String; = "ino"

.field private static final MODE_NAME:Ljava/lang/String; = "mode"

.field private static final NLINK_NAME:Ljava/lang/String; = "nlink"

.field private static final RDEV_NAME:Ljava/lang/String; = "rdev"

.field private static final UID_NAME:Ljava/lang/String; = "uid"

.field static final unixAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 307
    sget-object v0, Lsun/nio/fs/UnixFileAttributeViews$Unix;->posixAttributeNames:Ljava/util/Set;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    .line 308
    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "ino"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "dev"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "rdev"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 309
    const-string/jumbo v2, "nlink"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "uid"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "gid"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "ctime"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 307
    invoke-static {v0, v1}, Lsun/nio/fs/Util;->newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 306
    sput-object v0, Lsun/nio/fs/UnixFileAttributeViews$Unix;->unixAttributeNames:Ljava/util/Set;

    .line 295
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .prologue
    .line 312
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;-><init>(Lsun/nio/fs/UnixPath;Z)V

    .line 313
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    const-string/jumbo v0, "unix"

    return-object v0
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .param p1, "requested"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    sget-object v2, Lsun/nio/fs/UnixFileAttributeViews$Unix;->unixAttributeNames:Ljava/util/Set;

    invoke-static {v2, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v1

    .line 345
    .local v1, "builder":Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    .line 346
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->addRequestedPosixAttributes(Ljava/nio/file/attribute/PosixFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 347
    const-string/jumbo v2, "mode"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 348
    const-string/jumbo v2, "mode"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    :cond_24
    const-string/jumbo v2, "ino"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 350
    const-string/jumbo v2, "ino"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->ino()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    :cond_3b
    const-string/jumbo v2, "dev"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 352
    const-string/jumbo v2, "dev"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->dev()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    :cond_52
    const-string/jumbo v2, "rdev"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 354
    const-string/jumbo v2, "rdev"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->rdev()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    :cond_69
    const-string/jumbo v2, "nlink"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 356
    const-string/jumbo v2, "nlink"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->nlink()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    :cond_80
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 358
    const-string/jumbo v2, "uid"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    :cond_97
    const-string/jumbo v2, "gid"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 360
    const-string/jumbo v2, "gid"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    :cond_ae
    const-string/jumbo v2, "ctime"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 362
    const-string/jumbo v2, "ctime"

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->ctime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    :cond_c1
    invoke-virtual {v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 324
    const-string/jumbo v0, "mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 325
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->setMode(I)V

    .line 326
    return-void

    .line 328
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_14
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 329
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->setOwners(II)V

    .line 330
    return-void

    .line 332
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_27
    const-string/jumbo v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 333
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->setOwners(II)V

    .line 334
    return-void

    .line 336
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3a
    invoke-super {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    return-void
.end method
