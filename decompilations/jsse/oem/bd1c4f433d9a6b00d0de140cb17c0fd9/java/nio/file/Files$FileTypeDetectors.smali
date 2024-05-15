.class Ljava/nio/file/Files$FileTypeDetectors;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileTypeDetectors"
.end annotation


# static fields
.field static final defaultFileTypeDetector:Ljava/nio/file/spi/FileTypeDetector;

.field static final installeDetectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1537
    invoke-static {}, Ljava/nio/file/Files$FileTypeDetectors;->createDefaultFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;

    move-result-object v0

    .line 1536
    sput-object v0, Ljava/nio/file/Files$FileTypeDetectors;->defaultFileTypeDetector:Ljava/nio/file/spi/FileTypeDetector;

    .line 1539
    invoke-static {}, Ljava/nio/file/Files$FileTypeDetectors;->loadInstalledDetectors()Ljava/util/List;

    move-result-object v0

    .line 1538
    sput-object v0, Ljava/nio/file/Files$FileTypeDetectors;->installeDetectors:Ljava/util/List;

    .line 1535
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDefaultFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
    .registers 1

    .prologue
    .line 1544
    new-instance v0, Ljava/nio/file/Files$FileTypeDetectors$1;

    invoke-direct {v0}, Ljava/nio/file/Files$FileTypeDetectors$1;-><init>()V

    .line 1543
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/spi/FileTypeDetector;

    return-object v0
.end method

.method private static loadInstalledDetectors()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1553
    new-instance v0, Ljava/nio/file/Files$FileTypeDetectors$2;

    invoke-direct {v0}, Ljava/nio/file/Files$FileTypeDetectors$2;-><init>()V

    .line 1552
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
