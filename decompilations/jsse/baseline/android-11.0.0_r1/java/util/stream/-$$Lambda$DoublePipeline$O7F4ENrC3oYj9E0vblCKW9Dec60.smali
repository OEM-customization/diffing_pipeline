.class public final synthetic Ljava/util/stream/-$$Lambda$DoublePipeline$O7F4ENrC3oYj9E0vblCKW9Dec60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$O7F4ENrC3oYj9E0vblCKW9Dec60;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$DoublePipeline$O7F4ENrC3oYj9E0vblCKW9Dec60;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$DoublePipeline$O7F4ENrC3oYj9E0vblCKW9Dec60;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$O7F4ENrC3oYj9E0vblCKW9Dec60;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$O7F4ENrC3oYj9E0vblCKW9Dec60;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Ljava/util/stream/DoublePipeline;->lambda$average$4()[D

    move-result-object v0

    return-object v0
.end method
