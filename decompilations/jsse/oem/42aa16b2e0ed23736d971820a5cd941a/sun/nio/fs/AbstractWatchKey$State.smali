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
        "Ljava/lang/Enum<",
        "Lsun/nio/fs/AbstractWatchKey$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/nio/fs/AbstractWatchKey$State;

.field public static final enum blacklist READY:Lsun/nio/fs/AbstractWatchKey$State;

.field public static final enum blacklist SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 51
    new-instance v0, Lsun/nio/fs/AbstractWatchKey$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/AbstractWatchKey$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    new-instance v0, Lsun/nio/fs/AbstractWatchKey$State;

    const-string v1, "SIGNALLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lsun/nio/fs/AbstractWatchKey$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    const/4 v1, 0x2

    new-array v1, v1, [Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v4, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lsun/nio/fs/AbstractWatchKey$State;->$VALUES:[Lsun/nio/fs/AbstractWatchKey$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/nio/fs/AbstractWatchKey$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lsun/nio/fs/AbstractWatchKey$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/AbstractWatchKey$State;

    return-object v0
.end method

.method public static blacklist values()[Lsun/nio/fs/AbstractWatchKey$State;
    .registers 1

    .line 51
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->$VALUES:[Lsun/nio/fs/AbstractWatchKey$State;

    invoke-virtual {v0}, [Lsun/nio/fs/AbstractWatchKey$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/nio/fs/AbstractWatchKey$State;

    return-object v0
.end method
