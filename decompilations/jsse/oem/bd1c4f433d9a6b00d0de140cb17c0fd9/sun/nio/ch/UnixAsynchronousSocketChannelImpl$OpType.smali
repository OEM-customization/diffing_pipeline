.class final enum Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;
.super Ljava/lang/Enum;
.source "UnixAsynchronousSocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

.field public static final enum CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

.field public static final enum READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

.field public static final enum WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    const-string/jumbo v1, "CONNECT"

    invoke-direct {v0, v1, v2}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    const-string/jumbo v1, "READ"

    invoke-direct {v0, v1, v3}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    const-string/jumbo v1, "WRITE"

    invoke-direct {v0, v1, v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    const/4 v0, 0x3

    new-array v0, v0, [Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    aput-object v1, v0, v2

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    aput-object v1, v0, v3

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    aput-object v1, v0, v4

    sput-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->$VALUES:[Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    return-object v0
.end method

.method public static values()[Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->$VALUES:[Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    return-object v0
.end method
