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
        "Ljava/lang/Enum<",
        "Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

.field public static final enum blacklist CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

.field public static final enum blacklist READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

.field public static final enum blacklist WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 49
    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    const-string v3, "READ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    new-instance v3, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    const-string v5, "WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    const/4 v5, 0x3

    new-array v5, v5, [Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->$VALUES:[Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    return-object v0
.end method

.method public static blacklist values()[Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;
    .registers 1

    .line 49
    sget-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->$VALUES:[Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    invoke-virtual {v0}, [Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    return-object v0
.end method
