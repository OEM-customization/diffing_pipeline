.class public final synthetic Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;->INSTANCE:Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist warnDefaultSUIDTargetVersionDependent(Ljava/lang/Class;J)V
    .registers 4

    invoke-static {p1, p2, p3}, Ljava/io/ObjectStreamClass;->lambda$static$0(Ljava/lang/Class;J)V

    return-void
.end method