.class public final enum Lsun/net/ftp/FtpClient$TransferType;
.super Ljava/lang/Enum;
.source "FtpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/FtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/net/ftp/FtpClient$TransferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/net/ftp/FtpClient$TransferType;

.field public static final enum blacklist ASCII:Lsun/net/ftp/FtpClient$TransferType;

.field public static final enum blacklist BINARY:Lsun/net/ftp/FtpClient$TransferType;

.field public static final enum blacklist EBCDIC:Lsun/net/ftp/FtpClient$TransferType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 81
    new-instance v0, Lsun/net/ftp/FtpClient$TransferType;

    const-string v1, "ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpClient$TransferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    new-instance v0, Lsun/net/ftp/FtpClient$TransferType;

    const-string v1, "BINARY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lsun/net/ftp/FtpClient$TransferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    new-instance v0, Lsun/net/ftp/FtpClient$TransferType;

    const-string v1, "EBCDIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lsun/net/ftp/FtpClient$TransferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ftp/FtpClient$TransferType;->EBCDIC:Lsun/net/ftp/FtpClient$TransferType;

    .line 79
    const/4 v1, 0x3

    new-array v1, v1, [Lsun/net/ftp/FtpClient$TransferType;

    sget-object v5, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    aput-object v5, v1, v2

    sget-object v2, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lsun/net/ftp/FtpClient$TransferType;->$VALUES:[Lsun/net/ftp/FtpClient$TransferType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpClient$TransferType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 79
    const-class v0, Lsun/net/ftp/FtpClient$TransferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpClient$TransferType;

    return-object v0
.end method

.method public static blacklist values()[Lsun/net/ftp/FtpClient$TransferType;
    .registers 1

    .line 79
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->$VALUES:[Lsun/net/ftp/FtpClient$TransferType;

    invoke-virtual {v0}, [Lsun/net/ftp/FtpClient$TransferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/net/ftp/FtpClient$TransferType;

    return-object v0
.end method
