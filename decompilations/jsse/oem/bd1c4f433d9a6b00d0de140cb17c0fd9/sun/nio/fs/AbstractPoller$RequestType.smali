.class final enum Lsun/nio/fs/AbstractPoller$RequestType;
.super Ljava/lang/Enum;
.source "AbstractPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/AbstractPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/nio/fs/AbstractPoller$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/nio/fs/AbstractPoller$RequestType;

.field public static final enum CANCEL:Lsun/nio/fs/AbstractPoller$RequestType;

.field public static final enum CLOSE:Lsun/nio/fs/AbstractPoller$RequestType;

.field public static final enum REGISTER:Lsun/nio/fs/AbstractPoller$RequestType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Lsun/nio/fs/AbstractPoller$RequestType;

    const-string/jumbo v1, "REGISTER"

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/AbstractPoller$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/AbstractPoller$RequestType;->REGISTER:Lsun/nio/fs/AbstractPoller$RequestType;

    .line 152
    new-instance v0, Lsun/nio/fs/AbstractPoller$RequestType;

    const-string/jumbo v1, "CANCEL"

    invoke-direct {v0, v1, v3}, Lsun/nio/fs/AbstractPoller$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/AbstractPoller$RequestType;->CANCEL:Lsun/nio/fs/AbstractPoller$RequestType;

    .line 153
    new-instance v0, Lsun/nio/fs/AbstractPoller$RequestType;

    const-string/jumbo v1, "CLOSE"

    invoke-direct {v0, v1, v4}, Lsun/nio/fs/AbstractPoller$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/AbstractPoller$RequestType;->CLOSE:Lsun/nio/fs/AbstractPoller$RequestType;

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Lsun/nio/fs/AbstractPoller$RequestType;

    sget-object v1, Lsun/nio/fs/AbstractPoller$RequestType;->REGISTER:Lsun/nio/fs/AbstractPoller$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lsun/nio/fs/AbstractPoller$RequestType;->CANCEL:Lsun/nio/fs/AbstractPoller$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lsun/nio/fs/AbstractPoller$RequestType;->CLOSE:Lsun/nio/fs/AbstractPoller$RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lsun/nio/fs/AbstractPoller$RequestType;->$VALUES:[Lsun/nio/fs/AbstractPoller$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/nio/fs/AbstractPoller$RequestType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    const-class v0, Lsun/nio/fs/AbstractPoller$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/AbstractPoller$RequestType;

    return-object v0
.end method

.method public static values()[Lsun/nio/fs/AbstractPoller$RequestType;
    .registers 1

    .prologue
    .line 150
    sget-object v0, Lsun/nio/fs/AbstractPoller$RequestType;->$VALUES:[Lsun/nio/fs/AbstractPoller$RequestType;

    return-object v0
.end method
