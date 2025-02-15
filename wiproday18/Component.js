import React from "react";

export function Library() {
    return (

        <div className="library-container">
            <h1>Library System</h1>
            <Books />
            <Students />
        </div>
    );
}

export function Books() {
    return (
        <div>
            <h2>Books List</h2>
            <ul>
                <li>The Alchemist - Paulo Coelho</li>
                <li>Atomic Habits - James Clear</li>
                <li>Rich Dad Poor Dad - Robert Kiyosaki</li>
            </ul>
        </div>
    );
}

export function Students() {
    return (
        <div>
            <h2>Student Information</h2>
            <ul>
                <li>Ram - Grade 10</li>
                <li>syham - Grade 11</li>
                <li>paro - Grade 9</li>
            </ul>
        </div>
    );
}
