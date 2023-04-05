.class final Lcom/google/common/reflect/TypeResolver$1;
.super Lcom/google/common/reflect/TypeVisitor;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mappings:Ljava/util/Map;

.field final synthetic val$to:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method visitClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 177
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No type mapping from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 4
    .param p1, "fromArrayType"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 170
    .local v0, "componentType":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    const-string v2, "%s is not an array type."

    iget-object v3, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 170
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 7
    .param p1, "fromParameterizedType"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 138
    iget-object v4, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v4, v4, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_1

    .line 162
    :cond_0
    return-void

    .line 141
    :cond_1
    const-class v4, Ljava/lang/reflect/ParameterizedType;

    iget-object v5, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v4, v5}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 142
    .local v3, "toParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 143
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    .line 145
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 144
    invoke-static {v4, v5, v6}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 148
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Inconsistent raw type: %s vs. %s"

    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    .line 147
    invoke-static {v4, v5, p1, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 153
    .local v0, "fromArgs":[Ljava/lang/reflect/Type;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 154
    .local v2, "toArgs":[Ljava/lang/reflect/Type;
    array-length v4, v0

    array-length v5, v2

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_0
    const-string v5, "%s not compatible with %s"

    invoke-static {v4, v5, p1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v5, v0, v1

    aget-object v6, v2, v1

    invoke-static {v4, v5, v6}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    .end local v1    # "i":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    new-instance v1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 9
    .param p1, "fromWildcardType"    # Ljava/lang/reflect/WildcardType;

    .prologue
    .line 114
    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    instance-of v6, v6, Ljava/lang/reflect/WildcardType;

    if-nez v6, :cond_1

    .line 134
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v5, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 118
    .local v5, "toWildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 119
    .local v1, "fromUpperBounds":[Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 120
    .local v4, "toUpperBounds":[Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 121
    .local v0, "fromLowerBounds":[Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 122
    .local v3, "toLowerBounds":[Ljava/lang/reflect/Type;
    array-length v6, v1

    array-length v7, v4

    if-ne v6, v7, :cond_2

    array-length v6, v0

    array-length v7, v3

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_0
    const-string v7, "Incompatible type: %s vs. %s"

    iget-object v8, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v6, v7, p1, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_3

    .line 129
    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v7, v1, v2

    aget-object v8, v4, v2

    invoke-static {v6, v7, v8}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "i":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 131
    .restart local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 132
    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v7, v0, v2

    aget-object v8, v3, v2

    invoke-static {v6, v7, v8}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
