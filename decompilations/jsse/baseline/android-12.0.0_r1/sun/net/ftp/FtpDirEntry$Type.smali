.class public final enum Lsun/net/ftp/FtpDirEntry$Type;
.super Ljava/lang/Enum;
.source "FtpDirEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/FtpDirEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/net/ftp/FtpDirEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum blacklist CDIR:Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum blacklist DIR:Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum blacklist FILE:Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum blacklist LINK:Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum blacklist PDIR:Lsun/net/ftp/FtpDirEntry$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 44
    new-instance v0, Lsun/net/ftp/FtpDirEntry$Type;

    const-string v1, "FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    new-instance v1, Lsun/net/ftp/FtpDirEntry$Type;

    const-string v3, "DIR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    new-instance v3, Lsun/net/ftp/FtpDirEntry$Type;

    const-string v5, "PDIR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun/net/ftp/FtpDirEntry$Type;->PDIR:Lsun/net/ftp/FtpDirEntry$Type;

    new-instance v5, Lsun/net/ftp/FtpDirEntry$Type;

    const-string v7, "CDIR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsun/net/ftp/FtpDirEntry$Type;->CDIR:Lsun/net/ftp/FtpDirEntry$Type;

    new-instance v7, Lsun/net/ftp/FtpDirEntry$Type;

    const-string v9, "LINK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lsun/net/ftp/FtpDirEntry$Type;->LINK:Lsun/net/ftp/FtpDirEntry$Type;

    .line 42
    const/4 v9, 0x5

    new-array v9, v9, [Lsun/net/ftp/FtpDirEntry$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lsun/net/ftp/FtpDirEntry$Type;->$VALUES:[Lsun/net/ftp/FtpDirEntry$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lsun/net/ftp/FtpDirEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpDirEntry$Type;

    return-object v0
.end method

.method public static blacklist values()[Lsun/net/ftp/FtpDirEntry$Type;
    .registers 1

    .line 42
    sget-object v0, Lsun/net/ftp/FtpDirEntry$Type;->$VALUES:[Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v0}, [Lsun/net/ftp/FtpDirEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/net/ftp/FtpDirEntry$Type;

    return-object v0
.end method
