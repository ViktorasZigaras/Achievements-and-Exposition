export class Category {
    id: number;
    parent: number;
    name: string;
    state: number;
    level: number;
    children: Category[] = [];
    
    constructor(id: number, parent: number, name: string, state: number, level: number) {
        this.id = id;
        this.parent = parent;
        this.name = name;
        this.state = state;
        this.level = level;
    }

}