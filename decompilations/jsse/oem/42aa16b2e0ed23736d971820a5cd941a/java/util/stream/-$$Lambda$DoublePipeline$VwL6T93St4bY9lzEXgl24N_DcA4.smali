.class public final synthetic Ljava/util/stream/-$$Lambda$DoublePipeline$VwL6T93St4bY9lzEXgl24N_DcA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$VwL6T93St4bY9lzEXgl24N_DcA4;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$DoublePipeline$VwL6T93St4bY9lzEXgl24N_DcA4;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$DoublePipeline$VwL6T93St4bY9lzEXgl24N_DcA4;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$VwL6T93St4bY9lzEXgl24N_DcA4;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$VwL6T93St4bY9lzEXgl24N_DcA4;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/util/stream/DoublePipeline;->lambda$toArray$9(I)[Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
