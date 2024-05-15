.class final enum Lsun/nio/fs/UnixFileStore$FeatureStatus;
.super Ljava/lang/Enum;
.source "UnixFileStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FeatureStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/nio/fs/UnixFileStore$FeatureStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/nio/fs/UnixFileStore$FeatureStatus;

.field public static final enum NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

.field public static final enum PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

.field public static final enum UNKNOWN:Lsun/nio/fs/UnixFileStore$FeatureStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    new-instance v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    const-string/jumbo v1, "PRESENT"

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/UnixFileStore$FeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    .line 213
    new-instance v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    const-string/jumbo v1, "NOT_PRESENT"

    invoke-direct {v0, v1, v3}, Lsun/nio/fs/UnixFileStore$FeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    .line 214
    new-instance v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lsun/nio/fs/UnixFileStore$FeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->UNKNOWN:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    .line 211
    const/4 v0, 0x3

    new-array v0, v0, [Lsun/nio/fs/UnixFileStore$FeatureStatus;

    sget-object v1, Lsun/nio/fs/UnixFileStore$FeatureStatus;->PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    aput-object v1, v0, v2

    sget-object v1, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    aput-object v1, v0, v3

    sget-object v1, Lsun/nio/fs/UnixFileStore$FeatureStatus;->UNKNOWN:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    aput-object v1, v0, v4

    sput-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->$VALUES:[Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    const-class v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v0
.end method

.method public static values()[Lsun/nio/fs/UnixFileStore$FeatureStatus;
    .registers 1

    .prologue
    .line 211
    sget-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->$VALUES:[Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v0
.end method
