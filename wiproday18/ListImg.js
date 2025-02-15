import { useState } from "react";
import Img1 from "./Image/1.avif";
import Img2 from "./Image/2.avif"; // Changed duplicate Img2 path
import Img3 from "./Image/3.avif"; // Changed duplicate Img3 path

export default function ListImages() {
    const [showList, setShowList] = useState(false);
    const images = [Img1, Img2, Img3];

    return (
        <div>
            <button onClick={() => setShowList(!showList)}>
                {showList ? "Hide Images" : "Show Images"}
            </button>
            
            {showList && (
                <ul>
                    {images.map((item, index) => (
                        <li key={index}> 
                            <img src={item} alt={`Image ${index + 1}`} width="150" />
                        </li>
                    ))}
                </ul>
            )}
        </div>
    );
}
