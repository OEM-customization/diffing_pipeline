.class final enum Ljava/io/File$PathStatus;
.super Ljava/lang/Enum;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PathStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/io/File$PathStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/io/File$PathStatus;

.field public static final enum greylist-max-o CHECKED:Ljava/io/File$PathStatus;

.field public static final enum greylist-max-o INVALID:Ljava/io/File$PathStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 176
    new-instance v0, Ljava/io/File$PathStatus;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/File$PathStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    new-instance v0, Ljava/io/File$PathStatus;

    const-string v1, "CHECKED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/io/File$PathStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/File$PathStatus;

    sget-object v4, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Ljava/io/File$PathStatus;->$VALUES:[Ljava/io/File$PathStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/io/File$PathStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 176
    const-class v0, Ljava/io/File$PathStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/io/File$PathStatus;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/io/File$PathStatus;
    .registers 1

    .line 176
    sget-object v0, Ljava/io/File$PathStatus;->$VALUES:[Ljava/io/File$PathStatus;

    invoke-virtual {v0}, [Ljava/io/File$PathStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File$PathStatus;

    return-object v0
.end method
