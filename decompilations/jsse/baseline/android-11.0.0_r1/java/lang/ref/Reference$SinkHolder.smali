.class Ljava/lang/ref/Reference$SinkHolder;
.super Ljava/lang/Object;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ref/Reference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SinkHolder"
.end annotation


# static fields
.field private static volatile greylist-max-o finalize_count:I

.field static volatile greylist-max-o sink:Ljava/lang/Object;

.field private static greylist-max-o sinkUser:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 304
    const/4 v0, 0x0

    sput v0, Ljava/lang/ref/Reference$SinkHolder;->finalize_count:I

    .line 306
    new-instance v0, Ljava/lang/ref/Reference$SinkHolder$1;

    invoke-direct {v0}, Ljava/lang/ref/Reference$SinkHolder$1;-><init>()V

    sput-object v0, Ljava/lang/ref/Reference$SinkHolder;->sinkUser:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()I
    .registers 1

    .line 300
    sget v0, Ljava/lang/ref/Reference$SinkHolder;->finalize_count:I

    return v0
.end method

.method static synthetic blacklist access$008()I
    .registers 2

    .line 300
    sget v0, Ljava/lang/ref/Reference$SinkHolder;->finalize_count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Ljava/lang/ref/Reference$SinkHolder;->finalize_count:I

    return v0
.end method
