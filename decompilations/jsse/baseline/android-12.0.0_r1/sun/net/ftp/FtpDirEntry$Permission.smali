.class public final enum Lsun/net/ftp/FtpDirEntry$Permission;
.super Ljava/lang/Enum;
.source "FtpDirEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/FtpDirEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/net/ftp/FtpDirEntry$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/net/ftp/FtpDirEntry$Permission;

.field public static final enum blacklist GROUP:Lsun/net/ftp/FtpDirEntry$Permission;

.field public static final enum blacklist OTHERS:Lsun/net/ftp/FtpDirEntry$Permission;

.field public static final enum blacklist USER:Lsun/net/ftp/FtpDirEntry$Permission;


# instance fields
.field blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 49
    new-instance v0, Lsun/net/ftp/FtpDirEntry$Permission;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lsun/net/ftp/FtpDirEntry$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Permission;->USER:Lsun/net/ftp/FtpDirEntry$Permission;

    new-instance v1, Lsun/net/ftp/FtpDirEntry$Permission;

    const-string v3, "GROUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lsun/net/ftp/FtpDirEntry$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lsun/net/ftp/FtpDirEntry$Permission;->GROUP:Lsun/net/ftp/FtpDirEntry$Permission;

    new-instance v3, Lsun/net/ftp/FtpDirEntry$Permission;

    const-string v5, "OTHERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lsun/net/ftp/FtpDirEntry$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lsun/net/ftp/FtpDirEntry$Permission;->OTHERS:Lsun/net/ftp/FtpDirEntry$Permission;

    .line 47
    const/4 v5, 0x3

    new-array v5, v5, [Lsun/net/ftp/FtpDirEntry$Permission;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lsun/net/ftp/FtpDirEntry$Permission;->$VALUES:[Lsun/net/ftp/FtpDirEntry$Permission;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    .line 54
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry$Permission;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lsun/net/ftp/FtpDirEntry$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpDirEntry$Permission;

    return-object v0
.end method

.method public static blacklist values()[Lsun/net/ftp/FtpDirEntry$Permission;
    .registers 1

    .line 47
    sget-object v0, Lsun/net/ftp/FtpDirEntry$Permission;->$VALUES:[Lsun/net/ftp/FtpDirEntry$Permission;

    invoke-virtual {v0}, [Lsun/net/ftp/FtpDirEntry$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/net/ftp/FtpDirEntry$Permission;

    return-object v0
.end method
