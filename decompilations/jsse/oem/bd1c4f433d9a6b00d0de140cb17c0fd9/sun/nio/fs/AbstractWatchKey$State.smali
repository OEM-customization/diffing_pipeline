.class final enum Lsun/nio/fs/AbstractWatchKey$State;
.super Ljava/lang/Enum;
.source "AbstractWatchKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/AbstractWatchKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/nio/fs/AbstractWatchKey$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/nio/fs/AbstractWatchKey$State;

.field public static final enum READY:Lsun/nio/fs/AbstractWatchKey$State;

.field public static final enum SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lsun/nio/fs/AbstractWatchKey$State;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/AbstractWatchKey$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    new-instance v0, Lsun/nio/fs/AbstractWatchKey$State;

    const-string/jumbo v1, "SIGNALLED"

    invoke-direct {v0, v1, v3}, Lsun/nio/fs/AbstractWatchKey$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    aput-object v1, v0, v2

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    aput-object v1, v0, v3

    sput-object v0, Lsun/nio/fs/AbstractWatchKey$State;->$VALUES:[Lsun/nio/fs/AbstractWatchKey$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/nio/fs/AbstractWatchKey$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lsun/nio/fs/AbstractWatchKey$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/AbstractWatchKey$State;

    return-object v0
.end method

.method public static values()[Lsun/nio/fs/AbstractWatchKey$State;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->$VALUES:[Lsun/nio/fs/AbstractWatchKey$State;

    return-object v0
.end method
